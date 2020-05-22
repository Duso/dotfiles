#!/usr/bin/env python

from pystatsd import Server

srvr = Server(debug=True)
srvr.serve()
