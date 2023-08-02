#############
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi


parse_git_branch() {
 git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

#RED="\[\033[1;31m\]"
#GREEN="\[\033[0;32m\]"
#YELLOW="\[\033[1;33m\]"
#BLUE="\[\033[1;34m\]"
#MAGENTA="\[\033[1;35m\]"
#CYAN="\[\033[1;36m\]"
#WHITE="\[\033[0;37m\]"
#THE_END="\[\033[0m\]" # This is needed at the end...

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[0;32m\]\u\[\033[0;37m\]@\[\033[1;31m\]\h\[\033[0;37m\]:\[\033[1;33m\]\w\[\033[1;36m\]$(parse_git_branch)\[\033[0m\]\$'
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$'
fi
unset color_prompt force_color_prompt

# Clean up after ourselves...
# unset RED GREEN YELLOW BLUE MAGENTA CYAN WHITE END
#############           