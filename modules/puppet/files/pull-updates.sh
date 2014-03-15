#!/bin/sh

GITDIR=/config/github/puppetmain

fatal(){ 
        echo "*** $*" 
        exit 1
} 

cd $GITDIR || fatal "Could not cd to repo directory"

git pull || fatal "Git pull returned a non-zero exit code"

/usr/local/bin/papply || fatal "Papply returned a non-zero exit code"

exit 0
