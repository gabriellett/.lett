# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=100000
SAVEHIST=100000
HISTIGNORE="ls:cd:cd -:pwd:exit:date:* --help";

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor line)

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/lett/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

eval "$(starship init zsh)"
eval "$(zoxide init zsh)"

for config_file (~/.lett/lib/*.lsh); do
  source $config_file
done

# Path
export PATH="$HOME/.lett/bin:$PATH"

# Fuzzyfind
source <(fzf --zsh)
