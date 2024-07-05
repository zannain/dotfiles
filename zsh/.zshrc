export ZSH="$HOME/.oh-my-zsh"
export EDITOR='nvim'

plugins=(git)

source $ZSH/oh-my-zsh.sh



eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/catppuccin_mocha-zsh-syntax-highlighting.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
alias ls="eza --icons=always --color=always --long --no-filesize --no-time --no-user --no-permissions"

