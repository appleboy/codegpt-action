#!/bin/sh

set -eu

export PLATFORM="github"

git config --global --add safe.directory /github/workspace
codegpt version
# ls -al
# codegpt review --help
# git log
codegpt review --amend
