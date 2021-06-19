# Setup fzf
# ---------
if [[ ! "$PATH" == *$ZSH_BASE/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/$ZSH_BASE/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/$ZSH_BASE/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/$ZSH_BASE/.fzf/shell/key-bindings.bash"
