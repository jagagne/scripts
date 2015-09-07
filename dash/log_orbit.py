import os
from scapy.all import *

print 'logging'

def arp_display(pkt):
  if pkt[ARP].op == 1: #who-has (request)
    if pkt[ARP].psrc == '0.0.0.0': # ARP Probe

	if pkt[ARP].hwsrc == 'f0:4f:7c:f6:bc:14':
		os.system('sh /Users/jagagne/Documents/scripts/dash/curl_to_logstash.sh')
		print "3 - Dirty Mouth?"
	else:
		print "ARP probe from unknown device: " + pkt[ARP].hwsrc
	
print sniff(prn=arp_display, filter="arp", store=0, count=10)
 
