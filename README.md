## dotfiles-ansible

Continuation of my [dotfiles](https://github.com/kianmeng/dotfiles) through
[Ansible](http://www.ansible.com/), a tool to configure and manage computers.

### Installation
Use the boostrap.sh Shell script to install Ansible.
```bash
$ wget -qO- https://raw.githubusercontent.com/kianmeng/dotfiles-ansible/master/bin/bootstrap.sh | bash -
```

Test your Ansible installation against localhost setup. You should obtain
similar result below.
```bash
$ ansible all -m ping
localhost | success >> {
    "changed": false, 
    "ping": "pong"
}
```
