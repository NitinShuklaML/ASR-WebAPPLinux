#!/usr/bin/env python

import sys
import urllib


raw_url=str(sys.argv[1])

#print(raw_url[2])

#print(raw_url)

encoded_string=urllib.quote(raw_url)

#print("This is the HTML encoded string: "+ encoded_string)

decoded_string=urllib.unquote(encoded_string)

#print("This is the decoded string: "+ decoded_string)

print(decoded_string)
