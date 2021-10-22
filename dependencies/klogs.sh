#!/bin/bash
​
# replace with your any namespace you want by default
namespace=dev2
#update with any podName you want by default
grep_string=document-library
​
# replace with your yaml secret filenames
secret=secret.yaml
secret_staging=secret_staging.yaml
# replace with your yaml secret path 
secret_path=~/.kube/
​
# if there is a namespace user input
if [[ ! -z $1 ]] 
  then
    namespace=$1
fi
​
# staging has a different secret file, so change the secret source if the namespace is staging
if [[ $namespace == "staging" ]]
  then
    secret=$secret_staging
fi
​
# if there is a search string user input then use that to lookup pods
if [[ ! -z $2 ]]
  then
    grep_string=$2
fi
​
#run the get pods command for the specified namespace
kubectl get pods -n $namespace --kubeconfig=$secret_path$secret > pods.txt
podName=$(grep -o "[^ ]*$grep_string[^ ]*" pods.txt | grep -v "sync")
​
# case if podName contains space character, and there are multiple pod names
if [[ "$podName" =~ [:space:] ]] 
  then
    echo "More Than 1 Pod found matching \"$grep_string\" in namespace \"$namespace\". Please select which pod to view logs for:"
    select single_podname in $podName
    do 
      echo "selected pod is $single_podname" 
      podName=$single_podname
      break
    done
fi
​
# case if no pod found
if [[ ! $podName ]] 
  then
    echo "No Pod Found Matching $podName"
    exit 2
fi
​
echo "Getting Logs For Pod $podName in namespace \"$namespace\""
​
kubectl logs $podName -n $namespace --kubeconfig=$secret_path$secret -f 
​