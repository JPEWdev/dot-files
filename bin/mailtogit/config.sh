#! /bin/sh
INCOMING="$HOME/.mailtogit/incoming"
TOOLSDIR="$HOME/bin/mailtogit"

if [ ! -d "$INCOMING" ]; then
    mkdir -p $INCOMING
fi

