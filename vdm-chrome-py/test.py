#!/usr/bin/env python3

import socket
import time

sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
sock.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
sock.bind(('', 11112))
sock.listen(1)
client, addr = sock.accept()
print('connected.')

while True:
    print('send once.')
    client.send(b'save')
    print( client.recv(2048) )
    time.sleep(3.0)
    pass