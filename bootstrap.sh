#!/usr/bin/env bash

apt-add-repository ppa:ansible/ansible
apt-get update -y
apt-get install ansible -y
