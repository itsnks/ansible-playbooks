#!/usr/bin/env bash

# vagrant by default creates its own keypair for all the machines. Password based authentication will be disabled by default and enabling it so password based auth can be done.

sudo sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/' /etc/ssh/sshd_config
sudo systemctl restart sshd

# Supressing the banner message everytime you connect to the vagrant box.

touch /home/vagrant/.hushlogin

# Updating the hosts file for all the 3 nodes with the IP given in vagrantfile

echo -e "192.168.56.17 ansible-host ansible-host\n192.168.56.15 web1.demo.com web1\n192.168.56.16 web2.demo.com web2\n192.168.56.18 web3.demo.com web3" >> /etc/hosts

# Installing necessary packages 

if [[ $(hostname) != "web3.demo.com" ]]; then
sudo apt update && sudo apt -y install curl wget net-tools iputils-ping python3-pip sshpass dos2unix
else
sudo yum update && sudo yum -y install curl wget net-tools python3-pip dos2unix
fi
# Install ansible using pip only in ansible-host node

if [[ $(hostname) = "ansible-host" ]]; then
  sudo pip3 install ansible
fi

#convert keygen.sh file into unix format in case you're syncing from windows host, can disable this step if not needed
#this thing below has driven me clinically insane, lord have mercy on me
dos2unix /home/vagrant/key_gen.sh
