# .bashrc

## If not running interactively, do nothing
[ -z "$PS1" ] && return

## Prompt
PS1="\n\[\e[1;35m\](\[\e[37;1m\]\u\[\e[35;1m\])-(\[\e[37;1m\]jobs:\j\[\e[35;1m\])-(\[\e[37;1m\]\w\[\e[35;1m\])\n\[\033[1;35m\]\\t \[\033[1;37m\]$ "

## This is a vi shop
set -o vi

export MYGVIMRC
export MYVIMRC

SVN_EDITOR=vim
EDITOR=vim
VISUAL=gvim

# Make history consistant across sessions and longer term
HISTSIZE=10000
HISTFILESIZE=20000
export HISTSIZE
shopt -s histappend
PROMP_COMMAND="history -a';$PROMPT_COMMAND"

## Aliases from stock ubuntu
# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias dir='dir --color=auto'
    alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

## I used todo.sh to manage my lists
alias t="/home/herb/.todo/todo.sh -d /home/herb/.todo/todo.cfg"

PATH="/home/herb/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/herb/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/herb/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/herb/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/herb/perl5"; export PERL_MM_OPT;
