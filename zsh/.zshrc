export ZSH=$HOME/.oh-my-zsh
export CONFIG=$HOME/.config
export STARSHIP_CONFIG=$CONFIG/starship/starship.toml
export VIM_CONFIG=$CONFIG/nvim
export EDITOR='nvim'
plugins=(git)

source $ZSH/oh-my-zsh.sh



eval "$(starship init zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# ALIASES

alias ls="eza --icons=always --color=always --long --no-filesize --no-time --no-user --no-permissions"
alias vimc="cd $VIM_CONFIG"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
