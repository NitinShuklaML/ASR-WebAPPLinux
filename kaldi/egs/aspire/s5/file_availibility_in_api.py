#!/usr/bin/env python

import json
import sys
import urllib

args=" ".join(sys.argv[1:])

response_json = json.loads(args)

#print("response_json from file in api availibility json : "+ response_json[0]["error_code"])

flag=False

if response_json[0]["error_code"] == "NOT_FOUND":

    flag=False

else:

    flag=True

print(flag)

