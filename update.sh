#!/bin/sh
cd "$WORKSPACE/clonedir"
svn2git --verbose --metadata --rebase
if [ "x$GITREMOTE" != "x" ]; then
	git push --mirror $GITREMOTE
fi
