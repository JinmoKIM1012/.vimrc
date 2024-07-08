# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

##### Export
export LANG='en_US.UTF-8'
export LANGUAGE='en_US:en'
export LC_ALL='en_US.UTF-8'
export TERM='xterm-256color'

##### Alias
alias vim="nvim"
alias vi="nvim"
alias tmux="tmux -2u"
alias mamba="micromamba"
alias sz='source ~/.zshrc'
alias vz='vim ~/.zshrc'
alias cz='cat ~/.zshrc'
alias dirsizes='du -h --max-depth 1'
alias alist='cat ~/.zshrc | grep alias'
alias num='ls | wc -l'
alias gc='git clone'
alias tmuxexp='tmux new -s exp'
alias attexp='tmux attach -t exp'

alias vgi1='ssh Server_1'
alias vgi2='ssh Server_2'
alias vgi3='ssh Server_3'
alias vgi4='ssh Server_4'
alias vgi5='ssh Server_5'
alias vgi6='ssh Server_6'
alias vgi7='ssh Server_7'
alias vgi8='ssh Server_8'
alias vgi101='ssh Server_101'

##### Zsh/Oh-my-Zsh Configuration
export ZSH="$HOME/.oh-my-zsh"
export SHELL="/bin/zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(
	git
	sudo
	up
	autojump
	zsh-autosuggestions
	zsh-syntax-highlighting
	zsh-completions
	zsh-bat
)


source $ZSH/oh-my-zsh.sh

##### Pyenv
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/jinmo/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/jinmo/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/jinmo/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/jinmo/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
alias switchcuda="source /home/jinmo/Projects/utils/switch-cuda/switch-cuda-zsh.sh"

source $HOME/.cargo/env

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
