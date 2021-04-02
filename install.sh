#!/bin/sh

DOTFILES_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

if [ "$(uname -s)" == "Darwin" ]; then
  sh $DOTFILES_ROOT/brew.sh
  sh $DOTFILES_ROOT/osx.sh
fi