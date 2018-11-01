#!/bin/bash

rke up --config ./cluster_extlb.yml
export KUBECONFIG=$(pwd)/kube_config_cluster_default_ingress.yml

kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller \
  --clusterrole cluster-admin \
  --serviceaccount=kube-system:tiller

helm init --service-account tiller

helm repo add rancher-stable https://releases.rancher.com/server-charts/stable

helm install stable/cert-manager --name cert-manager --namespace kube-system

helm install rancher-stable/rancher --name rancher --namespace cattle-system --set tls=external --set hostname=<host-with-worker>
