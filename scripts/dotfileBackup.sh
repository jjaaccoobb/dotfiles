#!/bin/sh
/usr/bin/git \
  --git-dir=$HOME/.cfg/\
  --work-tree=$HOME \
  commit -am "automated backup" \
&& config push origin master
