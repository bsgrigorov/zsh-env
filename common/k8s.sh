# used code from https://nikgrozev.com/2019/10/03/switch-between-multiple-kubernetes-clusters-with-ease/
# Set the default kube context if present
DEFAULT_KUBE_CONTEXTS="$HOME/.kube/config"
if test -f "${DEFAULT_KUBE_CONTEXTS}"
then
  export KUBECONFIG="$DEFAULT_KUBE_CONTEXTS"
fi

# Additional contexts to be added in a folder
CUSTOM_KUBE_CONTEXTS="$ZSHENV/secret/kubeconfigs"
mkdir -p "${CUSTOM_KUBE_CONTEXTS}"

OIFS="$IFS"
IFS=$'\n'
for contextFile in `find "${CUSTOM_KUBE_CONTEXTS}" -type f -name "*.yaml"`
do
  chmod 600 $contextFile
  export KUBECONFIG="$contextFile:$KUBECONFIG"
done
IFS="$OIFS"



# Needed in order for kubectx to work independently in each terminal session
export KUBECTXTTYCONFIG="${HOME}/.kube/tty/$(basename $(tty) 2>/dev/null || echo 'notty')"
mkdir -p "$(dirname $KUBECTXTTYCONFIG)"
export KUBECONFIG="${KUBECTXTTYCONFIG}:${KUBECONFIG}"
cat <<EOF >${KUBECTXTTYCONFIG}
apiVersion: v1
kind: Config
current-context: ""
EOF


# Required to speed up namespace setup. Lookups are not required
kns() {
  if [ -z "$1" ]; then
    # kubectl get sa default -o jsonpath='{.metadata.namespace}'
    kubens
    echo
  else
    kubectl config set-context --current --namespace $1
  fi
}

kt() {

  OIFS="$IFS"
  IFS=$'*'

  ARG_STR="*$**"

  FILTERED_CONTEXTS=$(find ${CUSTOM_KUBE_CONTEXTS} -type f -name ${ARG_STR} | paste -sd ":" -)

  DEFAULT_KUBECONFIG=$KUBECONFIG
  KUBECONFIG=$FILTERED_CONTEXTS

  IFS="$OIFS"

  FILTERED_CONTEXT_NAMES=$(k config get-contexts -o name)
  if [[ $FILTERED_CONTEXT_NAMES == *$'\n'* ]]; then
    kubectx
    CURRENT_CONTEXT=$(k config current-context)
    KUBECONFIG=$DEFAULT_KUBECONFIG

    kubectx $CURRENT_CONTEXT > /dev/null
  else
    KUBECONFIG=$DEFAULT_KUBECONFIG
    kubectx $FILTERED_CONTEXT_NAMES
  fi

}

# ktx() {
#   echo $KUBECONFIG
#   # kubectx "$@"
#   kubectx
# }

# Select default cluster
kubectx shoot--eureka--black
