# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="my_robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# Configuration
PATH="$HOME/bin:$PATH"

if [[ $TMUX ]]; then
  alias clear='clear && tmux clear-history'
fi

source ~/.zshconfig

