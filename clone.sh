#!/bin/sh
if [ ! -f "$CLONEDSTAMP" ]; then
	cd "$CLONEDIR"
	$SVN2GIT --verbose --no-minimize-url --metadata $@ && \
		touch "$CLONEDSTAMP"
fi
