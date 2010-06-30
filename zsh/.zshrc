# Created by newuser for 4.3.5
# Lines configured by zsh-newuser-install
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/swiftgeek/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

#Swift Geek configuration
case "$TERM" in
	cons25*|linux)
	bindkey '[1~'		beginning-of-line	# home
	bindkey '[4~'		end-of-line		# end
	bindkey '[2~'		overwrite-mode		# insert
	bindkey '[3~'		delete-char		# delete
	bindkey '[5~'		beginning-of-history	# Page Up
	bindkey '[6~'		end-of-history		# Page Dn
	;;
	*xterm*)
	bindkey 'OH'		beginning-of-line	# home
	bindkey 'OF'		end-of-line		# end
	bindkey '[2~'		overwrite-mode		# insert
	bindkey '[3~'		delete-char		# delete
	bindkey '[1;5C'	forward-word		# ctrl right
	bindkey '[1;5D'	backward-word		# ctrl left
	bindkey '[5~'		beginning-of-history	# Page Up
	bindkey '[6~'		end-of-history		# Page Dn
	;;
	*rxvt*)
	bindkey '[7~'		beginning-of-line	# home
	bindkey '[8~'		end-of-line		# end
	bindkey '[2~'		overwrite-mode		# insert
	bindkey '[3~'		delete-char		# delete
	bindkey 'Oc'		forward-word		# ctrl right
	bindkey 'Od'		backward-word		# ctrl left
	bindkey '[5~'		beginning-of-history	# Page Up
	bindkey '[6~'		end-of-history		# Page Dn
	;;
	screen*)
	bindkey '[1~'		beginning-of-line	# home
	bindkey '[4~'		end-of-line		# end
	bindkey '[2~'		overwrite-mode		# insert
	bindkey '[3~'		delete-char		# delete
	bindkey '[5~'		beginning-of-history	# Page Up
	bindkey '[6~'		end-of-history		# Page Dn
	bindkey '[1;5C'	forward-word		# ctrl right
	bindkey '[1;5D'	backward-word		# ctrl left
	;;
esac
# Opcje
unsetopt beep
setopt autocd
setopt PRINT_EXIT_VALUE
setopt HIST_IGNORE_ALL_DUPS
setopt CORRECTALL
setopt CHECK_JOBS
setopt extendedglob

# Prompt
autoload -U promptinit promptinit
promptinit
#prompt fade green
#prompt adam2 green blue green white
prompt fire green green green white white blue
# style dopelniania 
zstyle ':completion:*:descriptions' format '%U%B%d%b%u'
zstyle ':completion:*:warnings' format '%BSorry, no matches for: %d%b'

# KLIENT FTP
autoload -U zfinit
zfinit

# Zcalc
autoload -U zcalc

# HISTORIA
export HISTSIZE=2000
export HISTFILE="$HOME/.history"
export SAVEHIST=$HISTSIZE
setopt hist_ignore_space

# ALIASY
alias ls='ls --color=auto'
alias grep='grep --color=auto'
eval `dircolors -b`
# ALIASY - APPS
alias netbeans='/home/swiftgeek/Apps/netbeans-6.5/bin/netbeans'
alias pacman='yaourt'
alias Daemons="ls /var/run/daemons"

pwd-sudo () {
	CWD=`pwd`
	echo $CWD
	/usr/bin/sudo -i -- cd $CWD; $@

}
alias sudo="sudo -i --"
alias df="df -h"
alias du="du -h"
alias Sudo="/usr/bin/sudo"
alias Unrar="unrar e -y -kb"
#alias Napi="~swiftgeek/Apps/bin/napi.py"
alias Napi="qnapi -c"
alias trayer="trayer --SetDockType true --widthtype request --align right --edge bottom --transparent true --alpha 255"
alias free="free -m"
alias mpd="mpd /home/swiftgeek/.mpd/config"
alias mplayer="padsp mplayer"

#EXPORT - inne takie
export EDITOR=/usr/bin/vim

# Poprawienie wersji terminala

if [ -e /usr/share/terminfo/x/xterm-256color ]; then
  if [ $COLORTERM = "gnome-terminal" ]; then
		export TERM='xterm-256color'
	fi
else
	export TERM='xterm-color'
fi

#KONIEC
