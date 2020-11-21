# .zshrc
ZSH_BASE=$HOME/dotfiles # Base directory for ZSH configuration

source ~/.aliases # Source some extra files
source ~/.functions

# Path to your oh-my-zsh installation.
export TERM="xterm-256color"
ZSH_DISABLE_COMPFIX=true

source $ZSH_BASE/.oh-my-zsh/oh-my-zsh.sh

[ ! -d $HOME/.asdf ] && 
git clone https://github.com/asdf-vm/asdf.git $HOME/.asdf &&
git checkout "$(git describe --abbrev=0 --tags)"

# Check if zplug is installed
[ ! -d $ZSH_BASE/.zplug ] && git clone https://github.com/zplug/zplug $ZSH_BASE/.zplug
source $ZSH_BASE/.zplug/init.zsh

# zplug
zplug 'zplug/zplug', hook-build:'zplug --self-manage'

# zsh-users
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-history-substring-search"
zplug "zsh-users/zsh-syntax-highlighting", defer:2

zplug "plugins/osx",      from:oh-my-zsh
zplug "plugins/brew",     from:oh-my-zsh, if:"which brew"
zplug "plugins/common-aliase", from:oh-my-zsh
zplug "plugins/colored-man-pages", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh

zplug "bhilburn/powerlevel9k", use:powerlevel9k.zsh-theme
zplug "b4b4r07/enhancd", use:enhancd.sh
zplug "supercrabtree/k"

# Install plugins if there are plugins that have not been installed
if ! zplug check --verbose; then
    printf "Install plugins? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

# Then, source plugins and add commands to $PATH
zplug load

POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_SHORTEN_DIR_LENGTH=1
#POWERLEVEL9K_SHORTEN_STRATEGY="truncate_right"
POWERLEVEL9K_DIR_OMIT_FIRST_CHARACTER=false
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=true
POWERLEVEL9K_ALWAYS_SHOW_USER=false
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ON_NEWLINE=false


# ASDF
. $HOME/.asdf/asdf.sh
fpath=(${ASDF_DIR}/completions $fpath)
# initialise completions with ZSH's compinit
autoload -Uz compinit
compinit
