# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# bash alias
alias ..='cd ..'
alias df='df -khT'
alias du='du -kh'
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias rm~='rm -f *~'
alias rm.='rm -f .#*'
alias mkdir='mkdir -p'
alias less='less -R'
alias grepc='grep -ni --color'

# ls
alias ls='ls --color=auto --group-directories-first'
alias l='ls -shF'
alias ll='ls -lsF'
alias la='ls -asF'
# if [ -f '$HOME/.dircolors' ]; then
#     dircolors -b '$HOME/.dircolors'
# fi

# full color terminal
if [ -n "$DISPLAY" -a "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

# curl
alias curl='curl -#'

# path
export PATH=$HOME/bin:$PATH
export MANPATH=$HOME/man:$HOME/share/man:$MANPATH
export INFOPATH=$HOME/share/info:$INFOPATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/lib

# prompt
export PS1="[\u \j \W]\$ "

# text to ps
export ENSCRIPT="--no-header --margins=36:36:36:36 --font=Courier9 --word-wrap --media=A4"
# source codes. two pages per sheet, double-sided, short-edge
alias enscript-src='enscript -G'

# printer
export PRINTER=Lexmark-W840
# PDF papers. one page per sheet, double-sided, long-edge, scale to page
alias lpr-pdf='lpr -o media=A4 -o sides=two-sided-long-edge -o fit-to-page'
# source codes. two pages per sheet, double-sided, short-edge
alias lpr-src='lpr -o media=A4 -o sides=two-sided-short-edge -o prettyprint -o number-up=2'

# openmp
export OMP_NUM_THREADS=8

# openmpi
export OPENMPI=$HOME/openmpi
export PATH=$OPENMPI/bin:$PATH
export MANPATH=$OPENMPI/share/man:$MANPATH

# python
export PYTHONPATH=$HOME/Sources/python:$HOME/lib/python2.7/site-packages/:/usr/lib/python2.6/site-packages/

# git
alias kslpush='git push ksl master'
alias kslpull='git pull ksl master'
alias workpush='git push work master'
alias workpull='git pull work master'

# scons
export SCONS_LIB_DIR=$HOME/lib/scons-2.3.0
export PYTHONPATH=$PYTHONPATH:$SCONS_LIB_DIR
alias scons='scons -Q'
alias socns='scons -Q'
alias soncs='scons -Q'
alias scosn='scons -Q'
alias scons2='scons -c; scons'

# emacs
alias emacs='emacs -nw'
alias eamcs='emacs -nw'
alias es='emacs SConstruct'

# texlive
export TEXDIR=$HOME/texlive/2012
export TEXMFHOME=$HOME/texmf
export TEXMFLOCAL=$HOME/texlive/texmf-local
export PATH=$PATH:$TEXDIR/bin/i386-linux
export MANPATH=$MANPATH:$TEXDIR/texmf/doc/man
export INFOPATH=$INFOPATH:$TEXDIR/texmf/doc/info

# rsf
export RSFROOT=$HOME/rsf
source $RSFROOT/share/madagascar/etc/env.sh 
export RSFSRC=$HOME/src/rsf
export PATH=$RSFROOT/bin:$PATH
export DATAPATH=$HOME/var/tmp
export MANPATH=$RSFROOT/share/man:$MANPATH

# SWAGM
export SWAGM=$HOME/SWAGM
export PYTHONPATH=$SWAGM/book/xuxin/Recipes:$PYTHONPATH
alias cduser='cd $SWAGM/user/xuxin'
alias cdbook='cd $SWAGM/book/xuxin'

# dislin
# export DISLIN=$HOME/dislin
# export PATH=$PATH:$DISLIN/bin
# export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$DISLIN

# totalview
# export PATH=$PATH:/mnt/kaustapps/TOTALVIEW/v8.8.0-1.app/prefix/toolworks/totalview.8.8.0-1/bin/

# Avizo
# export AVIZO_ROOT=$HOME/avizo
# export PATH=$PATH:$AVIZO_ROOT/bin
# update only once
# chcon -v -t texrel_shlib_t "${AVIZO_ROOT}"/lib/arch-Linux*-*/lib*.so

# IDL
# export IDL_DIR=/opt/share/IDL/v8.1.app/idl81/

# Intel
# export ICC_ROOT=/usr/local/icc
# source $ICC_ROOT/bin/iccvars.sh ia32

# SWAGM svn
# alias cduser='cd $HOME/src/SWAGM/user/xuxin'
# alias cdbook='cd $HOME/src/SWAGM/book/xuxin'

# svn
# alias svnst='svn status | grep -v ?'
# alias svnci='svn commit -m "up"'

# modules
# case "$0" in
#           -sh|sh|*/sh)	modules_shell=sh ;;
#        -ksh|ksh|*/ksh)	modules_shell=ksh ;;
#        -zsh|zsh|*/zsh)	modules_shell=zsh ;;
#     -bash|bash|*/bash)	modules_shell=bash ;;
# esac
# module() { eval `/usr/local/Modules/3.2.10/bin/modulecmd $modules_shell $*`; }
# export MODULESHOME=/usr/local/Modules/3.2.10
#export MODULEPATH=/opt/share/modules/applications:/opt/share/modules/compilers:/opt/share/modules/libs:/opt/share/modules/sets
