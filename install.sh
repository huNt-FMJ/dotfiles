#!/bin/bash
set -e

function testFunction() {
  echo "param 0: $0"
  echo "param 1: $1"
  echo "param 2: $2"
}

function replaceDotFile() {
  if test -e ~/$1; then
    echo $1 already exists
    echo "backing up old $1 file (~/$1_old)"
    mv ~/$1 ~/$1_old
  fi
  ln -s $(pwd)/$1 ~/$1
}


function setSymlinkForFile() {
    ln -s ./$1 ~/$1
}



replaceDotFile .tmux.conf

if [ ! -d ~/.backups ]; then
  mkdir ~/.backups
fi
replaceDotFile .vimrc
replaceDotFile .gitconfig

echo list of files having been backuped
ls -al ~/*_old


