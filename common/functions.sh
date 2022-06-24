
# docker
de(){
  docker exec -it $(docker start $1) bash
}
desh(){
  docker exec -it $(docker start $1) sh
}
docker_rm_stopped() {
    docker rm $(docker ps -a -q)
}
ka(){
  k apply -f $1
}

ke() {
  k exec -it $1 $2 $3 -- bash
}

kesh(){
  k exec -it $1 $2 $3 -- sh
}

kp() {
  k port-forward $1 $2:80
}

hu(){
  helm upgrade -i $1 .ci/charts/
}

seal(){
  echo -n $1 | kubeseal --raw --from-file=/dev/stdin --scope cluster-wide --controller-name=sealed-secrets-info
}

b64enc() {
  echo -n "$1" | base64 
}
b64dec() {
  echo $1 | base64 -d 
}

kpod() {
  kubectl get pod -l app=$1 -o jsonpath="{.items[0].metadata.name}"
}

gocov() {
  if [ -z "$1" ]; then
    go test . -v -coverprofile=cover.out && go tool cover -html=cover.out && rm cover.out
  else
    go test $1 -v -coverprofile=cover.out && go tool cover -html=cover.out && rm cover.out
  fi
}

enc() {
  echo -n "$@" | openssl aes-256-cbc -a -pbkdf2
}

dec() {
  echo "$@" | openssl aes-256-cbc -a -pbkdf2 -d
}
cd() {
  builtin cd $@
  ls -lh
}

jira(){
  open https://jira.eurekacloud.io
}

p() {
  export PROFILE=$1
  sc
}
