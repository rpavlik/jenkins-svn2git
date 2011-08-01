#!/bin/sh
export RUBYLIB=$WORKSPACE/svn2git/lib
export SVN2GIT="ruby $WORKSPACE/svn2git/bin/svn2git"
export CLONEDIR="$WORKSPACE/clonedir"
export CLONEDSTAMP="$WORKSPACE/cloned-stamp"
$WORKSPACE/init.sh $@
$WORKSPACE/clone.sh --continue $@
$WORKSPACE/update.sh
