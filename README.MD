# Dotfiles
This repository contains my dotfiles managed with GNU Stow.
## Structure
The repository is structured as follows:
```zsh
.
├── nvim   # Neovim configuration
├── tmux   # Tmux configuration
└── zsh    # Zsh configuration
```

Each directory contains the respective configuration files, which can be symlinked to the home directory using `stow`.

## Installation

1. Clone the repository:
```zsh
    git clone https://github.com/kubemancer/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
```
1. Use `stow` to symlink the configurations:
```zsh
    stow nvim
    stow tmux
    stow zsh
```
This will create symlinks in your home directory pointing to the respective configurations.
## Adding New Configurations

To add a new configuration:
1. Create a new directory (e.g., `vim` for Vim configuration).
2. Place your configuration files inside the directory, maintaining their relative paths (e.g., `vim/.vimrc`).
3. Run `stow new_directory` to create symlinks.
## Updating Dotfiles
To update any configuration, edit the files inside the repository, and changes will reflect in the symlinked locations.
## Uninstalling
To remove symlinks:
```zsh
stow -D nvim
stow -D tmux
stow -D zsh
```
