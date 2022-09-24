#!/usr/bin/env bash

commitmessage='auto - '`whoami`@`hostname`
/usr/local/bin/yadm status -s  | awk '{print $2}'| xargs /usr/local/bin/yadm add
/usr/local/bin/yadm add ~/.config/yadm
/usr/local/bin/yadm commit -m "$commitmessage"
/usr/local/bin/yadm push origin
/usr/local/bin/yadm push github
/usr/local/bin/yadm push gitlab
/usr/local/bin/yadm push gittea
/usr/local/bin/yadm push --all
/usr/local/bin/yadm pull
