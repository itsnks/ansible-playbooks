# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  
    config.vm.box = "debian/bullseye64"
    config.vm.network "private_network", ip: "192.168.33.10"
    config.vm.synced_folder "../data", "/vagrant_data"
    config.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
    end
    
    config.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y apache2
    SHELL
  end
    