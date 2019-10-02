# -*- mode: ruby -*-
# vi: set ft=ruby :


Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/bionic64"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = "4096"
        vb.cpus = 3
    end
    
    #enabling x11 over ssh 
    config.ssh.forward_agent = true
    config.ssh.forward_x11 = true
end
