#!/usr/bin/env bash

# Prerequisite before we can setup and config our system until I can figure a
# way to bypass this. Currently only RPM-based and DEB-based GNU/Linux distros
# are supported.

function git_clone_and_ansible_ping() {
    git clone https://github.com/kianmeng/dotfiles-ansible.git
    cd dotfiles-ansible
    ansible all -m ping
}

function install_ansible_and_git() {
    if [[ $(python -mplatform | grep -Ei 'ubuntu|debian') ]];
    then
        sudo apt-add-repository -y ppa:ansible/ansible
        sudo apt-get update
        sudo apt-get install -y ansible git
    elif [[ $(python -mplatform | grep -Ei 'fedora|centos') ]];
    then
        if [[ $(id -u) -ne 0 ]];
        then
            su -
        else
            yum install epel-release -y
            yum install ansible git -y
        fi
    else
        echo -e "Error: Only RPM-based or DEB-based GNU/Linux distros are supported.\n"
        exit 1
    fi
}

install_ansible_and_git && git_clone_and_ansible_ping
