#!/bin/bash

pacman-install-if-needed python3 python-virtualenvwrapper
source /usr/bin/virtualenvwrapper_lazy.sh

function mkvirtualenv-if-needed {
    for envname in $@; do
        $(lsvirtualenv | grep -q "$envname") || mkvirtualenv "$envname" -p /usr/bin/python3.4
    done
}
