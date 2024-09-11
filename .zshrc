# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH=$HOME/.oh-my-zsh

# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Other Oh My Zsh configs
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git command-not-found common-aliases zsh-autosuggestions zsh-autocomplete zsh-syntax-highlighting you-should-use zsh-bat)
plugins=(git common-aliases you-should-use)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

# Useful aliases for basic directory navigation
# alias la='ls -la'
# alias ll='ls -l'
alias find='noglob find'
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ......="cd ../../../../.."

# Command history search with arrow up / down
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

# Add NVIM to the Path
if [ -d "/opt/nvim-linux64/bin" ]; then
	export PATH="$PATH:/opt/nvim-linux64/bin"
elif [ -d "$HOME/nvim-macos-arm64" ]; then
	export PATH="$PATH:$HOME/nvim-macos-arm64/bin"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Load work specific configuration
if [ -f ~/.zshrc_work ]; then
	source ~/.zshrc_work
fi

