# Show branch in status line
# PS1='[\W$(__git_ps1 " (%a)")]\ '
export PROMT_COMMAND='echo -ne "\033]0;${PWN/#$HOME/~}\007"'
export RUBYOPT=rubygems

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

# changes prompt to [dir]> (with colors)
export PS1="\[\e[36;1m\][\[\e[32;1m\]\W\[\e[0m\]]>\[\e[36;91m\] "
