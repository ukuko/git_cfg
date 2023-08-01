# https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

RED="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[1;34m\]"
MAGENTA="\[\033[1;35m\]"
CYAN="\[\033[1;36m\]"
WHITE="\[\033[0;37m\]"
THE_END="\[\033[0m\]" # This is needed at the end... 



# Show git branch name
force_color_prompt=yes
color_prompt=yes

parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

if [ "$color_prompt" = yes ]; then
 PS1="${debian_chroot:+($debian_chroot)}$GREEN\u$WHITE@$RED\h$WHITE:$YELLOW\w $CYAN$(parse_git_branch)$THE_END\$ "
else
 PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w$(parse_git_branch)\$ '
fi

unset color_prompt force_color_prompt


# Clean up after ourselves...
unset RED GREEN YELLOW BLUE MAGENTA CYAN WHITE END
