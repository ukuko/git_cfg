# https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

RED="\[\033[1;31m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[1;33m\]"
BLUE="\[\033[1;34m\]"
MAGENTA="\[\033[1;35m\]"
CYAN="\[\033[1;36m\]"
WHITE="\[\033[0;37m\]"
THE_END="\[\033[0m\]" # This is needed at the end... 


#PS1="${debian_chroot:+($debian_chroot)}$GREEN\u$WHITE@$RED\h$WHITE:$YELLOW\w $CYAN$(__git_ps1)$THE_END\$ "

PS1="$GREEN \u$WHITE@$RED\h$WHITE:$YELLOW\w$CYAN$(__git_ps1)$THE_END\$ "
#PS1="$GREEN \u$WHITE@$RED\h$WHITE:$YELLOW\W$CYAN$(__git_ps1 ' (%s)')$THE_END\$ "

#PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# use existing PS1 settings
#PROMPT_COMMAND=$(sed -r 's|^(.+)(\\\$\s*)$|__git_ps1 "\1" "\2"|' <<< $PS1)  

#unset color_prompt force_color_prompt


# Clean up after ourselves...
unset RED GREEN YELLOW BLUE MAGENTA CYAN WHITE END
