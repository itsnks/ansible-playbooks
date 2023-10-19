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
  boxes.each do |conf|
    config.vm.define conf[:name] do config
      config.ssh.insert_key = false
      config.vm.hostname = conf[:name]
      config.vm.box = conf[:box]
      config.vm.network :private_network, ip: conf[:ip]
      config.vm.synced_folder ".", "/opt/vagrant", id: "vagrant-root", disabled: true
      config.vm.provider :virtualbox do |vb|
        vb.memory = conf[:ram]
        vb.cpus = conf[:cpu]
      end
    
    config.vm.provision "shell", inline: <<-SHELL
      apt-get update
      apt-get install -y apache2
    SHELL
  end
    