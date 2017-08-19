#!/usr/bin/env bash

# Prerequisite before we can setup and config our system until I can figure a
# way to bypass this. Currently only RPM-based and DEB-based GNU/Linux distros
# are supported.

# Newer distro like Fedora 23 does not install Python 2.X by default as they
# fully embraced Python 3.
DEFAULT_PYTHON='python'
[ -n $(command -v python) ] && DEFAULT_PYTHON='python3'

DEFAULT_REPO_PATH="$HOME/src"

function git_clone_and_ansible_ping() {
    mkdir $DEFAULT_REPO_PATH
    cd $DEFAULT_REPO_PATH
    git clone https://github.com/kianmeng/dotfiles-ansible.git
    cd dotfiles-ansible
    ansible all -m ping
}

function install_ansible_and_git() {
    if [[ $($DEFAULT_PYTHON -mplatform | grep -Ei 'ubuntu|debian') ]];
    then
        sudo apt-get install -y git make python-pip
    elif [[ $($DEFAULT_PYTHON -mplatform | grep -Ei 'fedora|centos') ]];
    then
	echo "bash"
        sudo dnf install -y redhat-rpm-config
        sudo dnf install -y git make
	sudo dnf install -y ansible
    else
        echo -e "Error: Only RPM-based or DEB-based GNU/Linux distros are supported."
        exit 1
    fi
    sudo -H pip install --upgrade setuptools ansible ansible-lint ansible-shell
}

install_ansible_and_git && git_clone_and_ansible_ping
