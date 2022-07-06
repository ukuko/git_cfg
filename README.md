# git_cfg

general git_cfg to be used around: aliases, color in tcshell

## HOW-TO

clone this  repository at your **home directory**  (c:\users\your_user_id), so that a folder will be available there: c:\users\your_user_id\git_cfg

### windows
look in your home directory for file .bash_profile, which shall be available after installing git client

then add this line:

    test -f ~/git_cfg/.bash_aliases && . ~/git_cfg/.bash_aliases

## test new entries

modify .bash_aliases as per your needs
in git bash at home directory use this:

    source  ~/git_cfg/.bash_aliases