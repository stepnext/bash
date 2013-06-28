# global settings
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# bash alias
alias ..='cd ..'
alias mkdir='mkdir -p'
alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'
alias du='du -kh'
alias df='df -kh'
alias rm~='rm -f *~'

# ls
alias l='ls -F'
alias la='ls -Fa'
alias ll='ls -lhF'
export CLICOLOR=1

# curl
alias curl='curl -#'

# prompt
export PS1="[\u \j \W] \$ "

# path
export MANPATH=/usr/share/man:/usr/local/share/man

# ssh
alias ssh='ssh -Y'

# emacs
alias eamcs='emacs'

# Python 2.7
export PYTHONPATH=/usr/local/lib:/Library/Python/2.7/site-packages

# MacTeX
export TEXDIR=/usr/local/texlive/2012
export TEXMFHOME=$TEXDIR/texmf
export PATH=$TEXDIR/bin/universal-darwin:$PATH

# scons
alias socns='scons'
alias soncs='scons'
alias es='emacs SConstruct'

# rsf
export RSFROOT=/usr/local
export RSFSRC=$HOME/src/rsf
# source $RSFROOT/share/madagascar/etc/env.sh
export DATAPATH=$HOME/var/tmp
export SWAGM=$HOME/SWAGM
export PYTHONPATH=$SWAGM/book/xuxin/Recipes:$PYTHONPATH
alias cduser='cd $SWAGM/user/xuxin'
alias cdbook='cd $SWAGM/book/xuxin'
