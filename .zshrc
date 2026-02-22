# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="xiong-chiamiov-plus"

plugins=( 
    git
    dnf
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# check the dnf plugins commands here
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/dnf


# Display Pokemon-colorscripts
# Project page: https://gitlab.com/phoneybadger/pokemon-colorscripts#on-other-distros-and-macos
pokemon-colorscripts --no-title -s -r

# fastfetch. Will be disabled if above colorscript was chosen to install
#fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# Set-up FZF key bindings (CTRL R for fuzzy history finder)
source <(fzf --zsh)

HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory

# Set-up icons for files/folders in terminal using eza
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
alias k=kubectl
alias tf=terraform
alias zshconfig='vim ~/.zshrc'
alias cat=bat


export PYTHONPATH=$PYTHONPATH:/home/pascal/Documents/Code/01_Client/monorepo/data-prep/src/main/python/
export PYTHONPATH=$PYTHONPATH:/home/pascal/Documents/Code/01_Client/monorepo/db-connections/src/main/python/

export LIBVA_DRIVER_NAME=i965

# Source secrets from separate file (not tracked in git)
if [ -f "$HOME/.secrets.zsh" ]; then
    source "$HOME/.secrets.zsh"
fi


# Created by `pipx` on 2024-11-05 08:18:23
export PATH="$PATH:/home/pascal/.local/bin"
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH='/home/pascal/.duckdb/cli/latest':$PATH
export EDITOR=/bin/vim

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pascal/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pascal/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/pascal/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/pascal/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

. "$HOME/.bruin/env"
