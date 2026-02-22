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

2. Set up secrets file:
   ```bash
   cp .secrets.zsh.template ~/.secrets.zsh
   # Edit ~/.secrets.zsh with your actual secrets
   ```

3. Create symlinks to your home directory:
   ```bash
   ln -sf ~/dotfiles/.zshrc ~/.zshrc
   ln -sf ~/dotfiles/.bashrc ~/.bashrc
   ln -sf ~/dotfiles/.gitconfig ~/.gitconfig
   # Add more symlinks as needed
   ```

## Managing Secrets

Secrets (API keys, passwords, tokens) are stored in `~/.secrets.zsh` which is NOT tracked by git.
- Use `.secrets.zsh.template` as a reference for what secrets are needed
- Never commit actual secrets to the repository
- The `.zshrc` file sources `~/.secrets.zsh` automatically if it exists

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
