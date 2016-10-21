"""
    UC.py
    Ultrasonic Controller
    Keeps the ultrasonic sensor’s data updated.
"""


#!/usr/bin/python3.5
#-*- coding: utf-8 -*-

#Standard imports :
import time
import atexit

#Specific imports :
from robotBasics import constants as CONSTANTS
from robotBasics import sockets as SOCKETS


def frontal_distance_cb(data, args):

    args["client"].send_data([True])
    args["server"].send_to_clients([args["client"].receive_data()])

#### CLIENTS CONNECTION :

#Creating the TCP instances
CONNECTION_SENSOR = SOCKETS.tcp.Client.Client(CONSTANTS.ports.FL["us"])

#We'll send small signed integers (-100 -> 100% of thrust / steering radius)
CONNECTION_SENSOR.set_sending_datagram(['FLOAT'])

#We'll receive booleans (status of the operation)
CONNECTION_SENSOR.set_receiving_datagram(['BOOL'])

#Opening the connection
CONNECTION_SENSOR.set_up_connection(10)

#### SERVER CONNECTION :

## Velocity Server :

#Creating the TCP instance
SERVER = SOCKETS.tcp.Server.Server(CONSTANTS.ports.ECL["uc"])
#Registering the close method to be executed at exit (clean deconnection)
atexit.register(SERVER.close)

#We'll receive and send small integers (velocity in percent of nominal velocity)
SERVER.set_receiving_datagram(['BOOL'])
SERVER.set_sending_datagram(['FLOAT'])

#Opening the connection
SERVER.set_up_connection(600)

#Argument to be passed to the steering callback method
ARGUMENTS = {
    "server": SERVER,
    "client": CONNECTION_SENSOR
}

#Waiting for requests and redirecting them to the callback methods
SERVER.listen_to_clients(frontal_distance_cb, ARGUMENTS)