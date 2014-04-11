PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

export M2_HOME=/Applications/apache-maven-3.1.1
export PATH=$PATH:$M2_HOME/bin
alias ll='ls -laG'
alias mvnci='mvn clean install -o'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# using color
export CLICOLOR=1

source ~/.git-prompt.sh

# grep
alias grep='grep --color=always'
