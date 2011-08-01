#!/bin/sh
cd "$WORKSPACE/clonedir"
$SVN2GIT --verbose --metadata --rebase
if [ "x$GITREMOTE" != "x" ]; then
	git push --mirror $GITREMOTE
fi
