# aliases for LXC

alias lxcls='lxc-ls --fancy'
alias lxclsr='lxcls --running'
alias lxclsa='lxcls --active'
alias lxclss='lxcls --stopped'

alias lxcst='lxc-start -n'
alias lxckill='lxc-stop -k -n'
alias lxcreboot='lxc-stop -r -n'

alias lxclog='lxc-console -n'
alias lxcsh='lxc-attach -n'
