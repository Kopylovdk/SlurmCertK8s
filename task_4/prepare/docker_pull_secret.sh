#!/bin/bash

NS='Namespace как при запуске скрипта'-production

kubectl delete secret app-gitlab-registry --namespace "$NS"

kubectl create secret docker-registry app-gitlab-registry \
  --docker-server registry.slurm.io \
  --docker-email 'some_email@gmail.com' \
  --docker-username 'username' \
  --docker-password 'token' \
  --namespace "$NS"
