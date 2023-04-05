#!/bin/sh

set -eu

export PLATFORM="github"

echo "test"
/bin/codegpt review --amend $*
