#!/bin/sh

set -eu

export PLATFORM="github"

codegpt version
ls -al
codegpt review --help
codegpt review --amend
