#!/bin/bash
export ZSHENV=~/dev/repos/home/zsh-env
export DEVENV=~/dev/repos
# ------------------------- ENVIRONMENT ----------------------------
if [ -z "$PROFILE" ]; then
    export PROFILE=work
fi
if [ -z "$PROJECT" ]; then
    export PROJECT=bison
fi
if [ -z "$ENV" ]; then
    export ENV=dev
fi
echo "Profile: $PROFILE; Project: $PROJECT; Env: $ENV; K8s Cluster: $CLUSTER"

# ------------------------- GENERAL ---------------------------------
source $ZSHENV/common/general.sh

# -------------------- Home Development Environment ----------------
if [ $PROFILE = "home" ]; then
    source $ZSHENV/home.sh
    source $ZSHENV/secret/home.sh
fi
# -------------------- Work Development Environment -----------------
if [ $PROFILE = "work" ]; then
    source $ZSHENV/work.sh
    source $ZSHENV/secret/work.sh
fi
