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

export KUBECONFIG=$ZSHENV/secret/kubeconfigs/${k8s["$CLUSTER"]}


export TARGET_CLUSTER_KUBE_CONFIG=$KUBECONFIG

SAP_BTP_CLI_AUTOCOMPLETE="/Users/i853090/Library/Caches/.btp/autocomplete/scripts/sapbtpcli-autocomplete.plugin.zsh" && fpath=("${SAP_BTP_CLI_AUTOCOMPLETE}" $fpath) && autoload -U compinit && compinit && source "${SAP_BTP_CLI_AUTOCOMPLETE}"


cloud_sql_proxy() {
  ~/Software/cloud_sql_proxy "$@" -credential_file=/Users/i853090/Development/Repos/home/zsh-env/secret/files/sap-eureka-development-eb43f3b86ac3.json
}

jiradb() {
  ~/Software/cloud_sql_proxy -instances=sap-eureka-development:us-central1:jiradb=tcp:5432 -credential_file=/Users/i853090/Development/Repos/home/zsh-env/secret/files/sap-eureka-development-eb43f3b86ac3.json
}

demojiradb() {
  ~/Software/cloud_sql_proxy -instances=sap-eureka-development:us-central1:jirademodb=tcp:5432 -credential_file=/Users/i853090/Development/Repos/home/zsh-env/secret/files/sap-eureka-development-eb43f3b86ac3.json
}