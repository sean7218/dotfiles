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
    - `htop` -> `~/.config/htop`
    - `karabiner` -> `~/.config/karabiner`
    - `aerospace` -> `~`
    - `starship` -> `~/.config`
    - `alacritty` -> `~/.config/alacritty`

Here are some example usages of stow:

```bash
# create the nvim folder first
mkdir -p ~/.config/nvim

# [T]arget ~/.config/nvim folder & [S]tow package nvim
stow -t ~/.config/nvim -S nvim

# [T]arget ~/.config/nvim folder & [R]estow package nvim
stow -t ~/.config/nvim -R nvim

# [T]arget ~/.config/nvim folder & [D]eleting package 
stow -t ~/.config/nvim -D nvim
```

## Zsh

All zsh config files are at the user home directory `~`
    - `~/.zshrc`
    - `~/.zprofile`
    - `~/.zlogin`
    - `~/.zenv`

```bash
cd ~/dotfiles
stow -t ~ -S zsh
```

## Kitty

Kitty config are stored in the `~/.config/kitty`

```bash
mkdir -p ~/.config/kitty
stow -t ~/.config/kitty -S kitty
```

## Tmux

1. install the tmux plugin manager [tmp](https://github.com/tmux-plugins/tpm)
2. launch tmux session and then `ctr+space+I` note: capital I to install plugins
3. source `tmux source ~/.config/tmux/tmux.conf`
4. relaunch tmux


```bash
mkdir -p ~/.config/tmux
stow -t ~/.config/tmux -S tmux
```

## Neovim

Neovim default configs are at `~/.config/nvim`

```bash
mkdir -p ~/.config/nvim
stow -t ~/.config/nvim -S nvim
```

## Tiling Window Manager

Github link: [nikitabobko/AeroSpace](https://github.com/nikitabobko/AeroSpace)

The default location for `.aerospace.toml` is located at the user home directory `~`

```bash
stow -t ~ -S aerospace
```

## Starship

Starship [link](https://starship.rs/config/):

Default location is at `~/.config/starship.toml`

```bash
stow -t ~/.config -S starship
```


