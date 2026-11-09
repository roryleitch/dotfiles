
export ZSH="$HOME/.oh-my-zsh"
export FZF_BASE="/opt/homebrew/Cellar/fzf/"
export FZF_DEFAULT_COMMAND="fzf"
export EDITOR="fresh"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export HOMEBREW_NO_ENV_HINTS=1

VSCODE=code

# Plugins
plugins=(
        git
        vscode
        aliases
        common-aliases
        mise
        sudo
        zsh-interactive-cd
        starship
        )

source $ZSH/oh-my-zsh.sh
# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# Aliases
alias reload="clear; exec zsh"
alias e=$EDITOR

#Syntax Highlighting with zsh-patina
eval "$(/opt/homebrew/opt/zsh-patina/bin/zsh-patina activate)"

#Run HyFetch
hyfetch