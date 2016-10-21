"""
    oa.py
    Decision Level module : Obstacle Avoidance
    Periodically checks the frontal distance and brakes if necesssary
"""


#!/usr/bin/python3.5
#-*- coding: utf-8 -*-

#Standard imports :
import time
import atexit
import logging

#Specific imports :
from robotBasics import constants as CONSTANTS
from robotBasics import sockets as SOCKETS

UPDATE_RATE = 0.2
MINIMAL_DISTANCE = 0.075

####LOGGER :
formatter = logging.Formatter("%(asctime)s -- %(name)s -- %(levelname)s -- %(message)s")

handler = logging.FileHandler("oa.log", mode="a", encoding="utf-8")

handler.setFormatter(formatter)

handler.setLevel(logging.DEBUG)

logger = logging.getLogger("oa.py")
logger.setLevel(logging.DEBUG)
logger.addHandler(handler_info)

###########################################################################
#                     CONNECTIONS SET UP AND SETTINGS :                   #
###########################################################################

#### CLIENTS CONNECTION :

#Creating the Get Frontal Distance module's client
UC_CLIENT = SOCKETS.tcp.Client.Client(CONSTANTS.ports.ECL["uc"])

#We'll send booleans (request)
UC_CLIENT.set_sending_datagram(['BOOL'])
#We'll receive floats (distance in meters)
UC_CLIENT.set_receiving_datagram(['FLOAT'])

#Opening the connection
UC_CLIENT.set_up_connection()


#Creating the Velocity/Steering regulator module's client object
VE_CLIENT = SOCKETS.tcp.Client.Client(CONSTANTS.ports.DL["ve"]["oa"])
#Registering the close method to be executed at exit (clean deconnection)
atexit.register(VE_CLIENT.close)

#We'll send floats (distance in meters)
VE_CLIENT.set_sending_datagram(['BOOL'])

#Opening the connection
VE_CLIENT.set_up_connection()

alive = True
print('Running ')
while alive:
    UC_CLIENT.send_data([True])
    if UC_CLIENT.receive_data()[0] <= MINIMAL_DISTANCE:
        VE_CLIENT.send_data([True])
        print('OBSTACLE !!!')
        logger.debug('OBSTACLE !')
    else:
        VE_CLIENT.send_data([False])
        print('No obstacle')
        logger.debug('No obstacle')
    time.sleep(UPDATE_RATE)
