#!/bin/sh
DIR=report/ui

if [ -e "$DIR" ]; then
  cd $DIR
  git fetch origin
  git checkout master
else
  git clone https://github.com/APT-Business/reg-cli-report-ui.git $DIR --depth 1
  cd $DIR
fi

yarn install --frozen-lockfile

yarn build

touch .npmignore



