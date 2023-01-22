#!/bin/bash
set -Eeuxo pipefail
cd $GITHUB_WORKSPACE
bash -c "$*"
