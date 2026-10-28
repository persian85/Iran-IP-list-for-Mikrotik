#Last update: Wed Oct 28 02:39:36 UTC 2026
/ip firewall address-list remove [/ip firewall address-list find list=IRAN-IP]
/ip firewall address-list
:do { add address=5.160.0.0/16 list=IRAN-IP} on-error={}
:do { add address=46.209.0.0/16 list=IRAN-IP} on-error={}
:do { add address=77.104.64.0/18 list=IRAN-IP} on-error={}
:do { add address=10.0.0.0/8 list=IRAN-IP} on-error={}
