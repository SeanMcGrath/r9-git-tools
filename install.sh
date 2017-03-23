#! /bin/bash

TARGETS="`find $PWD -type f -d 1 ! -name '*.*'`"

brew install chrome-cli

ln -s $TARGETS /usr/local/bin
chmod +x $TARGETS
