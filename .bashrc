#classic, minimalist prompt + current git branch

# Shitty title animation
#( exec "./.animateTitle.sh" )

# Decent title
( exec "./.drednautTitle.sh" )





  if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
      . /opt/local/etc/profile.d/bash_completion.sh
  fi
ORANGE_BG='\[\033[48;5;208m\]'
ORANGE_FG='\[\033[1;38;5;208m\]'
WHITE_BG='\[\033[48;5;254m\]'
WHITE_FG='\[\033[38;5;254m\]'
BLACK_BG='\[\033[48;5;0m\]'
BLACK_FG='\[\033[38;5;236m\]'
ARROW_SYM=''
REGULAR='\e[0m'
PS1=$"\n${BLACK_FG}${ORANGE_BG}${ARROW_SYM} \u ${REGULAR}${ORANGE_FG}${ARROW_SYM}${WHITE_BG}${BLACK_FG}${ARROW_SYM}${WHITE_BG} \W ${REGULAR}${WHITE_FG}${ARROW_SYM}${REGULAR} "


#colorful
export CLICOLOR=1
export LSCOLORS=gxBxhxDxfxhxhxhxhxcxcx
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;31;40'
export MINICOM='--color on'

export EDITOR=vim
export PAGER=less

#enable command-line completion for aws
complete -C aws_completer aws

export TERM=rxvt-256color
export PATH="$PATH:/Library/TeX/texbin"


export PATH=/usr/local/bin:$PATH

set -o vi

