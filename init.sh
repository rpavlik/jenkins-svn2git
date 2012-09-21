#!/bin/sh
if [ ! -d "$CLONEDIR" ]; then
	mkdir -p "$CLONEDIR"
	cd "$CLONEDIR"
	git init
	if [ "x$NOMINIMIZEURL" != "x" ]; then
		git config svn.followparent false
	fi
	$WORKSPACE/clone.sh $@
fi
