#!/bin/sh

set -eu

export PLATFORM="github"

echo "test"
codegpt version
codegpt review --amend $*
