#!/bin/sh

set -eu

export PLATFORM="github"

echo "test"
sh -c "/bin/codegpt review --amend $*"
