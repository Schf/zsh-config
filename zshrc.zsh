# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/franco/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

ADOTDIR="$XDG_CONFIG_HOME"/zsh/storage
ANTIGEN_LOG="$ADOTDIR"/antigen.log
source "$XDG_CONFIG_HOME"/zsh/antigen/antigen.zsh
source "$XDG_CONFIG_HOME"/zsh/plugins.zsh

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source "$XDG_CONFIG_HOME"/zsh/aliases.zsh
source "$XDG_CONFIG_HOME"/zsh/bindkeys.zsh
source "$XDG_CONFIG_HOME"/zsh/options.zsh
source "$XDG_CONFIG_HOME"/zsh/others.zsh

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#aaaaaa"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

