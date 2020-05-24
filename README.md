# DevOps16

This vagrant will install 3 Linux Ubuntu machines, 2x Linux servers and 1 ubuntu server with Ansible.
It will add some default users, groups and directory's.
This Vagrant is to practice with Ansible and Linux, Windows server and Cisco Routers in 1 test enviroment.
This repository is intended for educational purpose only.


## Prerequisites

Works on Windows 10 and tested on macOS (macOS needs the Virtualbox extension pack).

Software needed:
* Virtualbox 5.0 or higher
* Git bash for Windows
* Vagrant 2.2.6 or higher
* Virtual machine with Windows server 


## Demo installation && use Vagrant

Youtube: https://youtu.be/KABnIuaA8SM


## Installation

* Install Virtualbox: https://www.virtualbox.org/wiki/Downloads
* Install Git bash for Windows: https://gitforwindows.org/
* Install Vagrant for Windows: https://www.vagrantup.com/downloads.html

## Run this Vagrant VM
Open **Git Bash** in Windows
```
cd Documents
mkdir vagrant && cd vagrant
git clone https://github.com/borahuho/DevOps16
cd DevOps16
vagrant up
vagrant ssh ansible
```
## Mission

Read your mission in ~/vagrant/mission (on Ansible server)

## Network
Vagrant VM will be set up with 2 network adapters
```
Nat : DHCP
Localhost (ansible): 192.168.10.180

Nat : DHCP
Localhost (linux1): 192.168.10.185

Nat : DHCP
Localhost (linux2): 192.168.10.186
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
vagrant ssh ansible
vagrant ssh linux1
vagrant ssh linux2
```

