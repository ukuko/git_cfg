# Colors
set     RED="%{\033[1;31m%}"
set   GREEN="%{\033[0;32m%}"
set  YELLOW="%{\033[1;33m%}"
set    BLUE="%{\033[1;34m%}"
set MAGENTA="%{\033[1;35m%}"
set    CYAN="%{\033[1;36m%}"
set   WHITE="%{\033[0;37m%}"
set     THE_END="%{\033[0m%}" # This is needed at the end... 

setenv GIT_BRANCH_CMD "sh -c 'git branch --no-color 2> /dev/null' | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'"
set prompt="${GREEN}%n@%m:${YELLOW}%~${CYAN} `$GIT_BRANCH_CMD`%B\n${WHITE}%#%b${THE_END}"

# Clean up after ourselves...
unset RED GREEN YELLOW BLUE MAGENTA CYAN WHITE THE_END
