#!/bin/sh
$WORKSPACE/init.sh $@
$WORKSPACE/clone.sh --continue $@
$WORKSPACE/update.sh
