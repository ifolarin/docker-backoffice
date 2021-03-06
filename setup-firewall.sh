#!/bin/bash
#Enable firewall
echo -e "Enabling ufw firewall..."
ufw enable

#Allowing port traffic
echo -e "Enabling ports..."

echo -e "ssh..."
ufw allow ssh
echo -e "done."
 
echo -e "http..."
ufw allow http
echo -e "done."

echo -e "https..."
ufw allow https
echo -e "done."

echo -e "143..."
ufw allow 143
echo -e "done."

echo -e “993…”
ufw allow 993
echo -e "done."

echo -e “4190…”
ufw allow 4190
echo -e "done."

echo -e "587..."
ufw allow 587
echo -e "done."

ufw status verbose