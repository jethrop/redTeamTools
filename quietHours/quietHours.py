#!
##Imports/dependencies
#!! Include dependancy installing code?
# Imports for using system commands
import sys

#Imports for using pure python in functions
import asyncio
import pyrcrack
from rich.console import Console
from rich.prompt import Prompt

###Variables
##All variables must be in 24hr YYMMDD format

## Timing variables
#Start Time
sT = 2200
#End Time
eT = 0500
#Dos Interval in minutes
dosMin = 3
dosMax = 10

## Data variables
# Target Mac Address
tMac = None
# Router Mac Address
rMac = None
#Video buffer size kb
vSize = 100
