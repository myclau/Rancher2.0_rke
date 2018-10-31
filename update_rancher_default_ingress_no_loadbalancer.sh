#!/bin/bash

export KUBECONFIG=$(pwd)/kube_config_cluster_default_ingress.yml

helm init --upgrade --service-account tiller
helm repo update
helm get values rancher
helm upgrade rancher rancher-stable/rancher --set hostname=<node1 address>
