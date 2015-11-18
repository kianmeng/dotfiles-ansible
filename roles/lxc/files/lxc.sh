# aliases for LXC

lxcls='lxc-ls --fancy'
lxclsr='lxcls --running'
lxclsa='lxcls --active'
lxclss='lxcls --stopped'

lxcst='lxc-start -n'
lxckill='lxc-stop -k -n'
lxcreboot='lxc-stop -r -n'

lxclogin='lxc-console -n'
lxcshell='lxc-attach -n'
