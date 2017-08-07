if [[ -f "/etc/bash.bashrc" ]]; then
    . /etc/bash.bashrc
fi

if [[ -f "/etc/bashrc" ]]; then
    . /etc/bashrc
fi

. $HOME/.bashrc.load

#export PATH=/home/ang/miniconda3/bin:$PATH
