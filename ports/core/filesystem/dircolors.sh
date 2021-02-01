etup for /bin/ls and /bin/grep to support color, the alias is in /etc/bashrc.
if [ -f "/etc/dircolors" ] ; then
        eval $(dircolors -b /etc/dircolors)
fi

if [ -f "$HOME/.dircolors" ] ; then
        eval $(dircolors -b $HOME/.dircolors)
fi

alias ls='ls --color=auto'
alias ll='ls -F -b -T 0 --group-directories-first --color=auto --format=long --time-style="+%F %T" --human-readable'
alias grep='grep --color=auto'
