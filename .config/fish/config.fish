if status is-interactive
    # Commands to run in interactive sessions can go here
end


# better ls with brew install eza
alias ls="eza"
alias ll="eza -l --grid"

# setup Starship Prompt
starship init fish | source

# setup zoxide
zoxide init fish | source

# setup fzf
# 1. brew install fzf fd bat
# 2. install fisher
# 3. install fzf.fish at https://github.com/PatrickF1/fzf.fish
