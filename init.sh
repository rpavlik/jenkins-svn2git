#!/bin/sh
if [ ! -d "$CLONEDIR" ]; then
	mkdir -p "$CLONEDIR"
	cd "$CLONEDIR"
	git init
	git config svn.followparent false
	$WORKSPACE/clone.sh $@
fi
