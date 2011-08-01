#!/bin/sh
export SVN2GIT="RUBYLIB=$WORKSPACE/svn2git/lib ruby $WORKSPACE/svn2git/bin/svn2git"
$WORKSPACE/init.sh $@
$WORKSPACE/clone.sh --continue $@
$WORKSPACE/update.sh
