ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"

DISABLE_AUTO_UPDATE="false"
DISABLE_LS_COLORS="false"
DISABLE_AUTO_TITLE="false"
COMPLETION_WAITING_DOTS="true"

plugins=(vi-mode git brew rvm npm ruby history-substring-search)

source $ZSH/oh-my-zsh.sh

ZSH_FILES=$HOME/.zsh

# preconfiguration
for config_file ($ZSH_FILES/before/*.zsh) source $config_file

# configuration
for config_file ($ZSH_FILES/*.zsh) source $config_file

autoload -Uz compinit
compinit
