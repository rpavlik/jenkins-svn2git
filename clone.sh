#!/bin/sh
MINURLPARAM=
if [ "x$NOMINIMIZEURL" != "x" ]; then
	MINURLPARAM=--no-minimize-url
fi
if [ ! -f "$CLONEDSTAMP" ]; then
	cd "$CLONEDIR"
	$SVN2GIT --verbose $MINURLPARAM --metadata $@ && \
		touch "$CLONEDSTAMP"
fi
