#!/bin/sh
if [ ! -d "$WORKSPACE/clonedir" ]; then
	mkdir -p "$WORKSPACE/clonedir"
	cd "$WORKSPACE/clonedir"
	git init
	git config svn.followparent false
	$WORKSPACE/clone.sh $@
fi
