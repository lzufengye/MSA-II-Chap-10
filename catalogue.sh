#!/bin/sh
cd /root/sockshop/catalogue/
chmod -R 770 /root/sockshop/catalogue
cp /etc/resolv.conf /tmp
sed -i s/"^.*search.*$"/"search"/g /tmp/resolv.conf
cat /tmp/resolv.conf > /etc/resolv.conf

java -jar catalogue.jar
