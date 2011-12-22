#!/bin/bash

PRG="$0"
while [ -h "$PRG" ]; do
    PRG=`readlink "$PRG"`
done
PRG_HOME=`dirname "$PRG"`

find . -iname "*$1*" | $PRG_HOME/filtere.und.sortiere.angebote.rb
