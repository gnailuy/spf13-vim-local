#!/bin/bash

FILES=(vimrc.before.local vimrc.bundles.local vimrc.local)

for FILE in ${FILES[@]}; do
    if [ -f ~/.${FILE} ]; then
        echo rm ~/.${FILE}
        rm ~/.${FILE}
    fi
    echo ln -s $(pwd)/${FILE} ~/.${FILE}
    ln -s $(pwd)/${FILE} ~/.${FILE}
done

