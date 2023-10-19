# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  boxes = [
    {
      :name => "test1.demo.com",
      :box => "debian/bullseye64",
      :ram => 1024,
      :cpu => 1,
      :ip => "192.168.54.10"
    },
    {
      :name => "test2.demo.com",
      :box => "debian/bullseye64",
      :ram => 1024,
      :cpu => 1,
      :ip => "192.168.54.11"
    },
    {
      :name => "test3.demo.com",
      :box => "debian/bullseye64",
      :ram => 1024,
      :cpu => 1,
      :ip => "192.168.54.12"
    },
    {
      :name => "ansible-host",
      :box => "debian/bullseye64",
      :ram => 4096,
      :cpu => 1,
      :ip => "192.168.54.5"
    }
  ]  
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
    