#!/bin/sh

set -eu

export PLATFORM="github"

codegpt version
ls -al
codegpt review --help
git config --global --add safe.directory /github/workspace
git log
codegpt review --amend
