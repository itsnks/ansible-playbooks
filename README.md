# Project Repo to perform tests using ansible

This repo contains some practiced examples done for ansible

* The Vagrantfile has configurations for setting up 4 machines where **ansible-host** acts as the management node.
* **ansibile-host**, **web1**& **web2** are configured with **ubuntu/focal64**
* **web3** is configured with **generic/centos8**

## Prerequisites:
* [Oracle Virtualbox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://developer.hashicorp.com/vagrant/downloads?product_intent=vagrant)

## Usage:
* Open terminal in the Project directory and use `vagrant up`
* After the machines are set up and fully loaded use `vagrant ssh ansible-host`

### Note:
* Any other VM provider can be used but be sure to configure it in the Vagrantfile
* inventory and yaml files are located in tasks directory
* sync can be enabled to direcly sync the files into the targetted directory