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
PS1=$"\n${ORANGE_FG}\W:${WHITE_FG}[\$(git symbolic-ref --short HEAD 2>/dev/null)]\n\u${REGULAR}\$ "


export EDITOR=vim
export PAGER=less

export PATH=/usr/local/bin:$PATH

set -o vi

alias vimrc='vim ~/.vimrc'
alias bashrc='vim ~/.bashrc'
alias ls='ls --color=auto'
alias python='python3'
