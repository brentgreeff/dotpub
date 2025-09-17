#!/bin/bash
set -x

backup=~/dotfiles_backup
mkdir -p $backup

repo=~/dotfiles
files="gitconfig pryrc"

for file in $files; do
  mv ~/.$file ~/dotfiles_backup/
  ln -s $repo/$file ~/.$file
done
