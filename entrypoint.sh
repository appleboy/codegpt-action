#!/bin/sh

set -eu

export PLATFORM="github"

git config --global --add safe.directory /github/workspace

sh -c "/bin/codegpt review --help"
