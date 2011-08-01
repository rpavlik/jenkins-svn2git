#!/bin/sh
if [ ! -f "$WORKSPACE/cloned-stamp" ]; then
	cd "$WORKSPACE/clonedir"
	svn2git --verbose --no-minimize-url --metadata $@ && \
		touch "$WORKSPACE/cloned-stamp"
fi
