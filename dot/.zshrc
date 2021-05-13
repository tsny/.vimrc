# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions)

# bind key to run last command
bindkey -s '^o' '!!\n\n' 

source $ZSH/oh-my-zsh.sh
export EDITOR='vim'

source ~/.zsh-vim.zsh
source ~/.alias.sh

# Load work related zsh
[[ ! -f ~/.work.zsh ]] || source ~/.work.zsh

export PATH=~/dev/go/bin:$PATH
export PATH=~/.local/bin:$PATH

# reloads zshrc
alias reload="source ~/.zshrc"

export GOPATH=~/dev/go
export GOBIN=/usr/local/bin

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.tsny-fzf.zsh ] && source ~/.tsny-fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
