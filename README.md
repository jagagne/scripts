# Scripts!! 
Helper scripts and code mainly.

Use at your own risk, I'm mainly using this repo as a convenient backup store for my own use. Some of these came from 3rd parties and have varying degrees of documentation available. Google is your friend.

## Dash Button and ELK stack
Pressing an Amazon Dash Button now logs to a running ELK stack.  
Check dash/dependencies. These are needed to get python scapy running on an OS X system.  
You'll need a dash button that is registered and set up with Amazon. Check your Amazon account each time you press the button, it will place an order but you can cancel the order.  
Startup dash/startup.sh, which will run the dash python script as a listening service for the button's ARP probe.  
The python script then calls a simple curl statement in a shell script, which makes a JSON call to the running instance of elasticsearch/logstash.  
The logstash configuration file allows for HTTP calls as input, and elasticsearch as output. The configuration file is in elk/logstash/bin/elk2.conf and you can view in kibana at http://localhost:5601. Search for the term 'dash'.  
