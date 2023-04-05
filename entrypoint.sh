#!/bin/sh

set -eu

export PLATFORM="github"

sh -c "/bin/codegpt review"
