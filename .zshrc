export EDITOR=nvim

# Set the directory we want to store zinit and plugins
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download Zinit, if it's not there yet
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source/Load zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add in zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Load completions
autoload -Uz compinit && compinit

# Keybindings
bindkey '^f' autosuggest-accept
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward
bindkey -e # set to emacs mode 

# restore previous directory history 
zinit cdreplay -q

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
# zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
# zstyle ':completion:*' menu no
# zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
# zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# alias
alias ls='ls --color' 


# Shell integrations
eval "$(fzf --zsh)"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

# Ctrl-R reverse search on fzf


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$HOME/.rvm/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH" # where zoxide executable lives
# export PATH="$HOME/.cargo/bin:$PATH" # for cargo
export PATH="$HOME/.gem/bin:$PATH" # for cocoapods
export PATH="$HOME/.cargo/bin:$PATH"
export SOURCEKIT_LOGGING=3
# export SOURCEKIT_TOOLCHAIN_PATH=/Users/sean7218/Library/Developer/Toolchains/swift-6.1-RELEASE.xctoolchain/usr/bin/
# export SOURCEKIT_TOOLCHAIN_PATH="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain"
# export SOURCEKIT_TOOLCHAIN_PATH="/Users/sean7218/Library/Developer/Toolchains/swift-6.1-RELEASE.xctoolchain"
# export SOURCEKIT_TOOLCHAIN_PATH="/Users/sean7218/Library/Developer/Toolchains/swift-6.0.2-RELEASE.xctoolchain"
export SOURCEKIT_TOOLCHAIN_PATH="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain"
export PATH="/Users/sean7218/.swiftly/bin:$PATH"

function ripgrep {
rg --color=always --line-number --no-heading --smart-case "" \
|  fzf --ansi \
       --delimiter : \
       --preview 'bat --style=full --color=always --highlight-line {2} {1}' \
       --preview-window '~4,+{2}+4/3,<80(up)'
}

