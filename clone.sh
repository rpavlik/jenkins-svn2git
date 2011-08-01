#!/bin/sh
if [ ! -f "$WORKSPACE/cloned-stamp" ]; then
	cd "$WORKSPACE/clonedir"
	$SVN2GIT --verbose --no-minimize-url --metadata $@ && \
		touch "$WORKSPACE/cloned-stamp"
fi
