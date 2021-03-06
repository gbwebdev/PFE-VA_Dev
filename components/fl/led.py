"""
    led.py
    Waits for a description of the desired state for the two LEDs,
    apply the appropriate configuration on the GPIO and responds with
    a notification when the request has been fulfilled.
"""

#!/usr/bin/python3.5
#-*- coding: utf-8 -*-

###Standard imports :
import atexit
from os import path

###Specific imports :
##robotBasics:
#Constants:
from robotBasics.constants.gpiodef import LEDS as LEDS_GPIO
from robotBasics.constants.gpiodef import LEDS_PINS as LEDS_PINS
from robotBasics.constants.connectionSettings import LED as LED_CS
#Classes & Methods:
from robotBasics.sockets.tcp.Server import Server as Server
from robotBasics.logger import robotLogger


###########################################################################
#                           Environment Setup :                           #
###########################################################################

#If we are on an actual robot :
if path.isdir("/home/robot"):
    ROBOT_ROOT = '/home/robot/'

    ##Adafruit_BBIO:
    import Adafruit_BBIO.GPIO as GPIO

elif path.isfile(path.expanduser('~/.robotConf')):
    #If we're not on an actual robot, check if we have
    #a working environment set for robot debugging:
    CONFIG_FILE = open(path.expanduser('~/.robotConf'), 'r')
    ROBOT_ROOT = CONFIG_FILE.read().strip()
    CONFIG_FILE.close()

    import Adafruit_BBIO_SIM.GPIO as GPIO

    #Simulator setup
    for name, pin in LEDS_GPIO.items():
        GPIO.pin_association(pin, name+' blinker')
    GPIO.setup_behavior('print')
else:
    ROBOT_ROOT = ''
    print('It seems like you are NOT working on an actual robot. \
You should set up a debugging environment before running any code (see documentation)')

#Logging Initialization :
LOGGER = robotLogger("FL > led", ROBOT_ROOT+'logs/fl/')

###########################################################################
#                           I/O Initialization :                          #
###########################################################################

for LED in LEDS_PINS:
    #Declare motor enabling pins as outputs
    GPIO.setup(LED, GPIO.OUT)
    #Set pins to HIGH (LEDs off)
    GPIO.output(LED, GPIO.HIGH)

###########################################################################
#                     Functions/Callbacks definition :                    #
###########################################################################

def set_leds_cb(data, args):
    """
        Callback function motor controlling:
        When instructions are updated through a request to the
        server, deduces and apply the corresponding motor configuration
    """
    for i, led in enumerate(LEDS_PINS):
        if data[0][i]:
            GPIO.output(led, GPIO.LOW)
        else:
            GPIO.output(led, GPIO.HIGH)
    args["connection"].send([True])

###########################################################################
#                     CONNECTIONS SET UP AND SETTINGS :                   #
###########################################################################

#### SERVER CONNECTION :

#Creating the TCP instances
LEDS_SERVER = Server(LED_CS, LOGGER)

#Registering the close method to be executed at exit (clean deconnection)
atexit.register(LEDS_SERVER.close)

#Opening the connection
LEDS_SERVER.connect()

#### CALLBACKS' ARGUMENT SETUP:

ARGUMENTS = {
    "connection": LEDS_SERVER
}

###########################################################################
#                               RUNNING :                                 #
###########################################################################

#Waiting for requests and redirecting them to the callback method
LEDS_SERVER.listen_to_clients(set_leds_cb, ARGUMENTS)
LEDS_SERVER.join_clients()
