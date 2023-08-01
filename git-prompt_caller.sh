source ~/git_cfg/git-prompt.sh # Show git branch name at command prompt  

export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"
#PROMPT_COMMAND='__git_ps1 "\u@\h:\w" "\\\$ "'


PS1='[\u@\h \W$(__git_ps1 " (%s)")]\$ '
# use existing PS1 settings
#PROMPT_COMMAND=$(sed -r 's|^(.+)(\\\$\s*)$|__git_ps1 "\1" "\2"|' <<< $PS1)  
