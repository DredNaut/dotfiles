#
# ~/.bashrc
#

[[ $- != *i* ]] && return

colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}

[[ -f ~/.extend.bashrc ]] && . ~/.extend.bashrc

[ -r /usr/share/bash-completion/bash_completion   ] && . /usr/share/bash-completion/bash_completion
#so as not to be disturbed by Ctrl-S ctrl-Q in terminals:
stty -ixon
export TERM=xterm-256color
export CDPATH=~/symlinks
export VISUAL=vim
export EDITOR="$VISUAL"

shopt -s checkwinsize
PS1=$'\[\e[30;1;104m\]\xee\x82\xb0\[\e[97;1;104m\] \u \[\e[94;1;40m\]\xee\x82\xb0 \[\e[30;1;107m\]\xee\x82\xb0\[\e[30;1;107m\] \W \[\e[97;1;49m\]\xee\x82\xb0\e[0m  '
