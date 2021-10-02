#!/bin/bash
export NAMESPACE=monitor

if [ -z "$CLUSTER" ]; then
    export CLUSTER=black
fi


declare -A k8s
k8s["local"]=
k8s["cd"]="kubeconfig--eureka--cd.yaml"
k8s["uat"]="kubeconfig--eureka--uat.yaml"
k8s["black"]="kubeconfig--eureka--black.yaml"
k8s["jira"]="kubeconfig--eureka--jira.yaml"
k8s["e2e"]="kubeconfig--eureka--e2e.yaml"
k8s["staging"]="kubeconfig--eureka--stagin-1.yaml"
k8s["trial"]="kubeconfig--eureka--trial.yaml"

k8s["gke-ci"]="kubeconfig--eureka--gke-ci.yaml"
k8s["ci"]="kubeconfig--eureka--ci.yaml"
k8s["trial-1"]="kubeconfig--eureka--trial-1.yaml"
k8s["prod"]="kubeconfig--eureka--prod.yaml"

export KUBECONFIG=$PWD/secret/kubeconfigs/${k8s["$CLUSTER"]}


export TARGET_CLUSTER_KUBE_CONFIG=$KUBECONFIG

SAP_BTP_CLI_AUTOCOMPLETE="/Users/i853090/Library/Caches/.btp/autocomplete/scripts/sapbtpcli-autocomplete.plugin.zsh" && fpath=("${SAP_BTP_CLI_AUTOCOMPLETE}" $fpath) && autoload -U compinit && compinit && source "${SAP_BTP_CLI_AUTOCOMPLETE}"

