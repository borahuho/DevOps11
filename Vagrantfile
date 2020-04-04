
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

    config.vm.define "web01", primary: true do |machine1|
        machine1.vm.host_name = "web01.local"
        machine1.vm.network "private_network", ip: "192.168.10.40"
        machine1.vm.provision "shell", inline: $useraddscript
        machine1.vm.provision :shell, path: "bootstrap.sh"

        machine1.vm.provider "virtualbox" do |vb|
            vb.cpus = 1
        end

        machine1.vm.synced_folder "DevOps16/", "/home/vagrant/mission"
        machine1.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "$HOME/.ssh/id_rsa"
    end

    config.vm.define "web02", primary: false do |machine2|
        machine2.vm.host_name = "web02.local"
        machine2.vm.network "private_network", ip: "192.168.10.50"
        machine2.vm.provision "shell", inline: $useraddscript
        machine2.vm.provision :shell, path: "bootstrap.sh"

        machine2.vm.provider "virtualbox" do |vb|
            vb.cpus = 1
        end
        
        machine2.vm.synced_folder "DevOps16/", "/home/vagrant/mission"
        machine2.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "$HOME/.ssh/id_rsa"
    end

    config.vm.define "HAproxy", primary: false do |machine3|
        machine3.vm.host_name = "HAproxy.local"
        machine3.vm.network "private_network", ip: "192.168.10.60"
        machine3.vm.provision "shell", inline: $useraddscript

        machine3.vm.provider "virtualbox" do |vb|
            vb.cpus = 1
        end
        
        machine3.vm.synced_folder "DevOps16/", "/home/vagrant/mission"
        machine3.vm.provision "file", source: "~/.vagrant.d/insecure_private_key", destination: "$HOME/.ssh/id_rsa"
    end

end