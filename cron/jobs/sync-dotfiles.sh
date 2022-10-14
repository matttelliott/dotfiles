#!/usr/bin/env bash

commitmessage='auto - '`whoami`@`hostname`
cd $HOME/dotfiles
/usr/bin/env git status -s  | awk '{print $2}'| xargs git add
/usr/bin/env git commit -m "$commitmessage"
/usr/bin/env git push
/usr/bin/env git push origin
/usr/bin/env git push github
/usr/bin/env git push gitlab
/usr/bin/env git push gittea
/usr/bin/env git push --all
/usr/bin/env git pull
