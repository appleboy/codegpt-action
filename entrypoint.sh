#!/bin/ash

REVIEW=$(codegpt commit --preview)
echo "review=$REVIEW" >> $GITHUB_OUTPUT
