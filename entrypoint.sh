#!/bin/bash

REVIEW=$(codegpt version)
echo "review=$REVIEW" >> $GITHUB_OUTPUT
