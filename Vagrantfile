
$useraddscript = <<SCRIPT
useradd -m henk
groupadd operators
usermod -aG operators henk
mkdir /operators
chown henk /operators
chgrp operators /operators
SCRIPT


Vagrant.configure('2') do |config|
    config.ssh.insert_key = false

    # set default settings
    config.vm.box = "ubuntu/bionic64"
    config.vm.provider "virtualbox" do |vb|
        vb.memory = 2048
        vb.cpus = 1
    end

    config.vm.define "web01", primary: true do |machine|
        machine.vm.host_name = "web01.local"
        machine.vm.network "private_network", ip: "192.168.10.40"
        config.vm.provision "shell", inline: $useraddscript
        config.vm.provision :shell, path: "bootstrap.sh"

        machine.vm.provider "virtualbox" do |vb|
            vb.cpus = 1
        end

        machine.vm.synced_folder "DevOps16/", "/home/vagrant/mission"
        machine.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "$HOME/.ssh/id_rsa"
    end

    config.vm.define "web02", primary: false do |machine|
        machine.vm.host_name = "web02.local"
        machine.vm.network "private_network", ip: "192.168.10.50"
        config.vm.provision "shell", inline: $useraddscript
        config.vm.provision :shell, path: "bootstrap.sh"

        machine.vm.provider "virtualbox" do |vb|
            vb.cpus = 1
        end
        
        machine.vm.synced_folder "DevOps16/", "/home/vagrant/mission"
        machine.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "$HOME/.ssh/id_rsa"
    end

    config.vm.define "HAproxy", primary: false do |machine|
        machine.vm.host_name = "HAproxy.local"
        machine.vm.network "private_network", ip: "192.168.10.60"
        config.vm.provision "shell", inline: $useraddscript

        machine.vm.provider "virtualbox" do |vb|
            vb.cpus = 1
        end
        
        machine.vm.synced_folder "DevOps16/", "/home/vagrant/mission"
        machine.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "$HOME/.ssh/id_rsa"
    end

end