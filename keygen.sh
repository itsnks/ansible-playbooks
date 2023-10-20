#!/usr/bin/env bash

#generating ssh keypair
ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""

for val in ansible-host node1 node2 node3; do
sshpass -p 'vagrant' ssh-copy-id -o "StrictHostKeyChecking=no" vagrant@$val
done

PROJECT_DIRECTORY="/home/vagrant/ansible_project/"
mkdir -p $PROJECT_DIRECTORY
cd $PROJECT_DIRECTORY

echo -e "ansible-host\n\n[debian1]\nnode1\n\n[debian2]\nnode2\n\n[debian3]\nnode3" > inventory
echo -e "[defaults]\ninventory = inventory" > ansible.cfg
