#!/bin/bash

### quagga
cp apt-quagga.list /etc/apt/sources.list
apt update -y 
apt install quagga -y

cp /usr/share/doc/quagga/examples/zebra.conf.sample /etc/quagga/zebra.conf
cp /usr/share/doc/quagga/examples/bgpd.conf.sample /etc/quagga/bgpd.conf
cp /usr/share/doc/quagga/examples/ospfd.conf.sample /etc/quagga/ospfd.conf
cp /usr/share/doc/quagga/examples/ospf6d.conf.sample /etc/quagga/ospf6d.conf
cp /usr/share/doc/quagga/examples/ripd.conf.sample /etc/quagga/ripd.conf
cp /usr/share/doc/quagga/examples/ripngd.conf.sample /etc/quagga/ripngd.conf
cp /usr/share/doc/quagga/examples/isisd.conf.sample /etc/quagga/isisd.conf
cp /usr/share/doc/quagga/examples/babeld.conf.sample /etc/quagga/babeld.conf

chown quagga.quaggavty /etc/quagga/*.conf
chmod 640 /etc/quagga/*.conf

/etc/init.d/quagga restart

### vlan
cp apt-sources.list /etc/apt/sources.list
apt update -y 
apt install vlan -y 
echo 8021q | sudo tee -a /etc/modules
