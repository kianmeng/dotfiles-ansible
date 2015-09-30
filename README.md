## dotfiles-ansible

Continuation of my [dotfiles](https://github.com/kianmeng/dotfiles) through
[Ansible](http://www.ansible.com/), a tool to configure and manage computers.

### Installation
Use the boostrap.sh Shell script to install Ansible. Either command with work.
```bash
$ wget -qO- https://goo.gl/35gHfP | bash -
$ bash <(curl -L https://goo.gl/35gHfP)
```

If everything goes well, you should obtain result below.
```bash
localhost | success >> {
    "changed": false, 
    "ping": "pong"
}
```
