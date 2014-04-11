alias ll='ls -lG'
PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export M2_HOME=/Applications/apache-maven-3.1.1
export PATH=$PATH:$M2_HOME/bin
alias ll='ls -laG'
alias mvnci='mvn clean install -o'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# using color
export CLICOLOR=1

source ~/.git-prompt.sh

# \h:\W \u\$
# export PS1='\[\033[01;33m\]\u@\h\[\033[01;31m\] \W\$\[\033[00m\] '
export PS1='\[\033[01;31m\]\u:\[\033[01;33m\]\[\033[01;34m\]\w\[\033[00m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
# grep
alias grep='grep --color=always'
