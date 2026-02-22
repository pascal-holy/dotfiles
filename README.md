# Dotfiles

My personal configuration files.

## Contents

- Shell configuration (.zshrc, .bashrc)
- Git configuration (.gitconfig)
- Other config files in `.config/`

## Setup

To use these dotfiles on a new system:

1. Clone this repository:
   ```bash
   git clone <your-repo-url> ~/dotfiles
   cd ~/dotfiles
   ```

2. Create symlinks to your home directory:
   ```bash
   ln -sf ~/dotfiles/.zshrc ~/.zshrc
   ln -sf ~/dotfiles/.bashrc ~/.bashrc
   ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
   # Add more symlinks as needed
   ```

## Adding New Config Files

To add a new config file:

1. Copy the file to this directory:
   ```bash
   cp ~/.configfile ~/dotfiles/
   ```

2. Create a symlink:
   ```bash
   ln -sf ~/dotfiles/.configfile ~/.configfile
   ```

3. Commit and push:
   ```bash
   git add .configfile
   git commit -m "Add configfile"
   git push
   ```
