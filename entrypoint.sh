#!/bin/sh

set -eu

export PLATFORM="github"

codegpt version
ls -al
git log
codegpt review --amend
