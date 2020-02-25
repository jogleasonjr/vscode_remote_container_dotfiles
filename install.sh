#!/bin/bash

dotfiles_repo_dir=$(pwd)
backup_dir="$HOME/.dotfiles.orig"
dotfiles_home_dir=(.aliases .bash_profile .bashrc .functions)

# Install config.
for dots_home in "${dotfiles_home_dir[@]}"
 do
	rm -rf "$HOME/${dots_home}"
	ln -fs "$dotfiles_repo_dir/${dots_home}" "$HOME/"
done
