#!/bin/sh

cd bundle
for i in `ls`; do
  cd "$i"
  git checkout master
  git pull
  cd ..
done
cd ..
