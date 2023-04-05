#!/bin/sh

set -eu

export PLATFORM="github"

git config --global --add safe.directory /github/workspace
codegpt version
# ls -al
# codegpt review --help
# git log
git diff --ignore-all-space --diff-algorithm=minimal --unified=0 HEAD^ HEAD
codegpt review --amend
