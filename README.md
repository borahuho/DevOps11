# DevOps16
```
With this vagrant, you will install 3 Ubuntu 18.04 machines, 2x apache webserver and 1 ubuntu server for HAproxy.
It will add some default users, groups and directory's. By default 2 webservers with small content.
This Vagrant is to practice with HAproxy.
This repository is intended for educational purpose only.
```

## Prerequisites
```
Works on Windows 10 and tested on macOS (macOS needs the Virtualbox extension pack).

Software needed:
* Virtualbox 5.0 or higher
* Git bash for Windows
* Vagrant 2.2.6 or higher
```

## Demo installation && use Vagrant
```
Youtube: https://youtu.be/KABnIuaA8SM
```

## Demo HAproxy
```
Youtube: https://youtu.be/YLlT9LXN5HQ
```

## Installation
```
Install Virtualbox: https://www.virtualbox.org/wiki/Downloads
Install Git bash for Windows: https://gitforwindows.org/
Install Vagrant for Windows: https://www.vagrantup.com/downloads.html
```
## Run this Vagrant VM
Open **Git Bash** in Windows
```
cd Documents
mkdir vagrant && cd vagrant
git clone https://github.com/borahuho/DevOps16
cd DevOps16
vagrant up
vagrant ssh HAproxy
```
## Mission
```
Read your mission in ~/vagrant/mission (on HAproxy server)
```
## Network
Vagrant VM will be set up with 2 network adapters
```
Nat : DHCP
Localhost (web1): 192.168.10.40

Nat : DHCP
Localhost (web2): 192.168.10.50

Nat : DHCP
Localhost (HAproxy): 192.168.10.60
```
## Vagrant commands
Start VM's with Vagrant
```
vagrant up
```
Stop and shutdown a VM
```
vagrant halt
```
Remove a VM
```
vagrant destroy
```
ssh in to the VM
```
vagrant ssh web01
vagrant ssh web02
vagrant ssh HAproxy
```

