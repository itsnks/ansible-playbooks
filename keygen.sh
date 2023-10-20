#!/usr/bin/env bash

#generating ssh keypair
ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""

for val in ansible-host node1 node2 node3; do
    echo "---------------COPYING KEY TO ${val^^} NODE---------------"
    sshpass -p 'vagrant' ssh-copy-id -o "StrictHostKeyChecking=no" vagrant@$val
done

#project directory for ansible
PROJECT_DIRECTORY="/home/vagrant/ansible_project/"
mkdir -p $PROJECT_DIRECTORY
cd $PROJECT_DIRECTORY

#creating inventory files for all nodes
echo -e "ansible-host\n\n[debian1]\nnode1\n\n[debian2]\nnode2\n\n[debian3]\nnode3" > inventory
echo -e "[defaults]\ninventory = inventory" > ansible.cfg
echo "-------------------Checking uptime------------------"
echo

#running adhoc command that checks uptime
ansible all -i inventory -m "shell" -a "uptime"
echo
