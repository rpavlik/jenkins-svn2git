#!/bin/sh
export SVN2GIT="RUBYLIB=$WORKSPACE/svn2git/lib ruby $WORKSPACE/svn2git/bin/svn2git"
export CLONEDIR="$WORKSPACE/clonedir"
export CLONEDSTAMP="$WORKSPACE/cloned-stamp"
$WORKSPACE/init.sh $@
$WORKSPACE/clone.sh --continue $@
$WORKSPACE/update.sh
