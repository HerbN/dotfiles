# .bashrc

## If not running interactively, do nothing
[ -z "$PS1" ] && return

## Prompt
PS1="\[\033[0;35m\]\\h~\\t:\[\033[1;37m\] "

## This is a vi shop
set -o vi

export MYGVIMRC
export MYVIMRC

## SVN just doesn't want to play with vim anymore
SVN_EDITOR=vim
EDITOR=vim
VISUAL=gvim

# Make history consistant across sessions and longer term
HISTSIZE=10000
HISTFILESIZE=20000
export HISTSIZE
shopt -s histappend
PROMP_COMMAND="history -a';$PROMPT_COMMAND"

## Quick cd
alias projects='/media/blue_passport/projects/'

## Quick ssh
alias hra='ssh nbkfklh@cltqtflphra0101.bankofamerica.com'
alias hrb='ssh nbkfklh@cltqtflphrb0101.bankofamerica.com'
alias hrd='ssh nbkfklh@cltqtflphrd0101.bankofamerica.com'
alias hrf='ssh nbkfklh@cltqtflphrf0101.bankofamerica.com'
alias ssa='ssh nbkfklh@atlqtflpssa0101.bankofamerica.com'
alias ssc='ssh nbkfklh@atlqtflpssc0101.bankofamerica.com'
alias dev='ssh nbkfklh@atlqtflddlz0101.bankofamerica.com'
alias dv2='ssh nbkfklh@cltqtfldplz0101.bankofamerica.com'
alias rch='ssh nbkfklh@rchciglpclu0101.bankofamerica.com'
alias pno='ssh nbkfklh@pnociglpclu0101.bankofamerica.com'
alias dze='ssh nbkfklh@pnociglpclu0101.bankofamerica.com'

## Calibration quick ssh
alias pmcal='ssh pm@pnociglpclu0101.bankofamerica.com'
alias volcal='ssh calibrate@pnociglpclu0101.bankofamerica.com'
alias crvcal='ssh calibrate@cltqtflphrb0101.bankofamerica.com'

## Passport drive
alias mountb='sudo mount -t ntfs -U 4E1AEA7B1AEA6007 /media/blue_passport'
alias umountb='sudo umount /media/blue_passport'


## Routine tasks
alias pm='ssc;ssc'
alias eod='ssc;ssc;hrb'

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

## For some reason bash wants to use jekyll which isn't there
alias jekyll=/usr/bin/jekyll
