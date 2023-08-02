# git_cfg

general git_cfg to be used around: aliases

color in: tcshell / shell

## HOW-TO

clone this  repository at your **home directory**  (in windows it would be like: c:\users\your_user_id), so that a folder will be available there like (in windows): c:\users\your_user_id\git_cfg

### windows / linux
look in your home directory for file **.bash_profile**, **.bashrc** or similar, which is run at startup and shall be available after installing git client.

then add this line:

    test -f ~/git_cfg/.bash_aliases && . ~/git_cfg/.bash_aliases

and for prompt 


    (tcshell)
    test -f ~/git_cfg/gitprompt.csh && . ~/git_cfg/gitprompt.csh

    (shell)
    look for this line (if not found, add all below)
    force_color_prompt=no  
    
    and replace that line with the content of: gitprompt.sh

    until this line:

    # If this is an xterm set the title to user@host:dir  



## bash_aliases: test new entries

* modify .bash_aliases, prompt files as per your needs

* in git bash at home directory use this:

    source  ~/.bashrc (or ~/.bashprofile)

# TL;DR

inspiration:

https://thucnc.medium.com/how-to-show-current-git-branch-with-colors-in-bash-prompt-380d05a24745

https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

also, I checked other option using below, but didnt work and was a big change on settings, so stopped:

https://github.com/git/git/blob/master/contrib/completion/git-prompt.sh



