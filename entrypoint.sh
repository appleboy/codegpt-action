#!/bin/sh

set -eu

export PLATFORM="github"

codegpt version
git log
codegpt review --amend
