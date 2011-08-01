#!/bin/sh
cd "$CLONEDIR"
$SVN2GIT --verbose --metadata --rebase
if [ "x$GITREMOTE" != "x" ]; then
	git push --mirror $GITREMOTE
fi
