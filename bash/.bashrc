alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias diff='colordiff'
#Default
#PS1='[\u@\h \W]\$ '
#Arch-Linux
#PS1='\[\e[0;32m\]\u\[\e[m\] \[\e[1;34m\]\w\[\e[m\] \[\e[m\] \[\e[1;32m\]\$ \[\e[m\]\[\e[1;37m\] '
#Gen2
PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w \$\[\033[00m\] '
eval `dircolors -b`

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  if [ $COLORTERM = "gnome-terminal" ]; then
		export TERM='xterm-256color'
	fi
else
	export TERM='xterm-color'
fi
