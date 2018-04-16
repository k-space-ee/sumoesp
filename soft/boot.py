
# Just in case prevent boot loops
from time import sleep
print("Press Ctrl-C to stop boot script...")
sleep(0.2)

from hal import *

# Start connecting to WiFi
wlan = network.WLAN(network.STA_IF)
wlan.active(True)
if not wlan.isconnected():
    networks = wlan.scan()
    for network in networks:
        ssid = network[0].decode("utf-8")
        if ssid in WIFIS:
            print("connecting to: " + ssid)
            wlan.connect(ssid, WIFIS[ssid])
            break
sleep(1)


# Clean up
import gc
gc.collect()


"""
HOST = "sumo.koodur.com"
name = "sumo-%s" % binascii.hexlify(wlan.config('mac')[-3:]).decode("ascii")
buf = name.encode("ascii")
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.settimeout(0.30)
s.setsockopt(socket.SOL_SOCKET, socket.SO_REUSEADDR, 1)
s.connect((HOST, 80))
s.send("POST /pub HTTP/1.0\r\n")
s.send("Host: " + HOST + "\r\n")
s.send("Connection: close\r\n")
s.send("Content-Type: text\r\n")
s.send("Content-Length: %d\r\n" % len(buf))
s.send("\r\n")
s.send(buf)
s.recv(10000)
s.close()
"""
