#!/bin/sh

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# backup
cp ~/.zshrc ~/.zshrc.`date -u +"%Y%m%d%H%M%S"`

# create aliases file
cp $DIR/aliases ~/.aliases

# this file should aready exist but just incase
ZSHRC_FILE=~/.zshrc
if [ ! -f "$ZSHRC_FILE" ]; 
then
    echo "$ZSHRC_FILE does not exist."
    cp $DIR/zshrc ~/.zshrc
else

    # add aliases if required
    if ! grep "source ~/.aliases" $ZSHRC_FILE; then
        cat $DIR/zshrc >> ~/.zshrc
    fi
fi

