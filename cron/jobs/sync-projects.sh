#!/usr/bin/env bash

commitmessage='auto - '`whoami`@`hostname`
projectsdir=$HOME/Projects
for gitdir in `find $projectsdir -name .git -type d -prune`; do
  cd $gitdir
  cd ..
  git add .
  git commit -m $commitmessage
  git push
done

