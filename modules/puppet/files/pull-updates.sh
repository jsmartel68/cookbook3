#!/bin/sh

fatal(){ 
        echo "*** $*" 
        exit 1
} 

GITDIR=/config/github/puppetmain
LOGFILE=/var/log/puppet/pull-updates.log

PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin:/root/bin
export PATH

DATE=`date +%Y%m%d-%H:%M:%S`

# redirect STDOUT and STDERR to the log file
exec >>${LOGFILE} 2>&1

echo "${DATE} starting pull-updates" || fatal "Cannot write to log file"

cd $GITDIR || fatal "Could not cd to repo directory"

git pull || fatal "Git pull returned a non-zero exit code"

/usr/local/bin/papply || fatal "Papply returned a non-zero exit code"

exit 0
