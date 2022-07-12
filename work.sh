#!/bin/bash

export WORK_CBCLOUD_REPO=~/dev/repos/bisontrails/

source $WORK_CBCLOUD_REPO/tendermint-scripts/aliases
OPS_AUTO_UPDATE=true

alias kt=qbc

GOPRIVATE=github.com/bisontrails/*