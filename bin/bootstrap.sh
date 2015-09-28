#!/usr/bin/env bash

# Prerequisite before we can setup and config our system until I can figure a
# way to bypass this. Currently only RPM-based and DEB-based GNU/Linux distros
# are supported.

if [[ $(python -mplatform | grep -Ei 'ubuntu|debian') ]];
then
    sudo apt-add-repository -y ppa:ansible/ansible
    sudo apt-get update
    sudo apt-get install -y ansible git

    git clone https://github.com/kianmeng/dotfiles-ansible.git
    cd dotfiles-ansible
    ansible all -m ping
elif [[ $(python -mplatform | grep -Ei 'fedora|centos') ]];
then
    if [[ $(id -u) -ne 0 ]];
    then
        su -
    else
        yum install epel-release -y
        yum install ansible git -y
        git clone https://github.com/kianmeng/dotfiles-ansible.git
        cd dotfiles-ansible
        ansible all -m ping
    fi
else
    echo -e "Error: Only RPM-based or DEB-based GNU/Linux distros are supported.\n"
fi
