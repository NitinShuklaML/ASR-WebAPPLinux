#!/usr/bin/env python

import os
import sys

args = str(sys.argv[1])

command = os.getcwd()+"/encoding.py "+ args
print("command is :"+command)

os.system(command)



















