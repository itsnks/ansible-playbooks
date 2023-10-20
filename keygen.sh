#!/usr/bin/env bash

#generating ssh keypair
ssh-keygen -b 2048 -t rsa -f /home/vagrant/.ssh/id_rsa -q -N ""

for val in ansible-host node1 node2 node3; do
sshpass -p 'vagrant' ssh-copy-id -o "StrictHostKeyChecking=no" vagrant@$val
done
