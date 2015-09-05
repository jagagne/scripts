import os
from scapy.all import *

def arp_display(pkt):
  if pkt[ARP].op == 1: #who-has (request)
    if pkt[ARP].psrc == '0.0.0.0': # ARP Probe

	if pkt[ARP].hwsrc == '74:c2:46:0b:35:5e':
		os.system('python /Users/jagagne/Documents/secrets/twitter_post.py')
		print "1 - Mac&Cheese pushed"
	else:
		print "ARP probe from unknown device: " + pkt[ARP].hwsrc
	
print sniff(prn=arp_display, filter="arp", store=0, count=10)
 
