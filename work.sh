#!/bin/bash

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