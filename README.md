# Dotfiles

All personal command line tools I use for coding.

## Getting Started

1. Setting up `stow` by installing thru homebrew

```bash
$ brew install stow
```

2. symlink the appropriate folders
    - `zsh` -> `~`
    - `kitty` -> `~/.config/kitty`
    - `tmux` -> `~/.config/tmux`
    - `nvim` -> `~/.config/nvim`
    - `aerospace` -> `~/.config/aerospace`
    - `starship` -> `~`

Here are some example usages of stow:

```bash
# create the nvim folder first
mkdir -p ~/.config/nvim

# symlink ~/dotfiles/nvim folder and target ~/.config/nvim folder
stow -t ~/.config/nvim nvim

# deleting symlink
stow -D nvim
```

## tmux

1. install the tmux plugin manager [tmp]()
2. launch tmux session and then `ctr+space+I` note: capital I to install plugins
3. relaunch tmux


## Tiling Window Manager

Github link: [nikitabobko/AeroSpace](https://github.com/nikitabobko/AeroSpace)




