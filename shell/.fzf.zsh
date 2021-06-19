# Setup fzf
# ---------
ZSH_BASE=$HOME/dotfiles # Base directory for ZSH configuration
if [[ ! "$PATH" == *$ZSH_BASE/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$ZSH_BASE/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "$ZSH_BASE/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/$ZSH_BASE/.fzf/shell/key-bindings.zsh"
