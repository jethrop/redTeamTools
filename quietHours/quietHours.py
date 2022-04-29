#!
##Imports/dependencies
#!! Include dependancy installing code?
import datetime
from datetime import time
from datetime import date
#import datetimerange
#import time
# Imports for using system commands
import sys

#Imports for using pure python in functions
import asyncio
##Imports failing despite being installed with pip
#import pycrack
#from rich.console import Console
#from rich.prompt import Prompt

###Static Variables
##All variables must be in 24hr YYMMDD format

## Timing variables
now = None
nowD = None
nowT = None
# time(hour, minute and second)
#b = time(11, 34, 56)
#Start Time
sTHr = int(22)
sTMin = int(0)
sTSec = int(0)
sT = time(sTHr,sTMin,sTSec)
print(sT)
#End Time
eTHr = int(5)
eTMin = int(0)
eTSec = int(0)
eT = time(sTHr,sTMin,sTSec)
#Dos Interval in minutes
dosMin = 3;
dosMax = 10
#DOS inbetween value
##Use time.sleep function for pausing execution
# time.sleep(2.4)
dosBreak = 2

## Data variables
# Target Mac Address
tMac = None
# Router Mac Address
rMac = None
#Video buffer size kb
vSize = 100

#def updateVar():
    ###This function updates dynamic variables
now = datetime.datetime.now()
nowD = now.date
nowT = now.ctime

print(now)
print(nowD)
print(now.date)
print(nowT)