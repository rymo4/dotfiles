alias rmi='rm -i'

export LANG=ru_RU.UTF-8

set meta-flag on
set input-meta on
set output-meta on
set convert-meta off

# Color for directories, files, etc.
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Use a headless macvim instead of vim. More reliable
alias vim='mvim -v'

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# MacPorts Installer addition on 2011-06-28_at_11:11:10: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

# Source the bashrc
[[ -s ~/.bashrc ]] && source ~/.bashrc

# Setting PATH for JRuby 1.7.0
# The orginal version is saved in .bash_profile.jrubysave
PATH="${PATH}:/Library/Frameworks/JRuby.framework/Versions/Current/bin"

PATH="${PATH}:$HOME/bin/"
export PATH
