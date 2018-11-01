#!/bin/bash

export KUBECONFIG=$(pwd)/kube_config_cluster_default_extlb.yml

helm init --upgrade --service-account tiller
helm repo update
helm get values rancher
helm upgrade rancher rancher-stable/rancher --set hostname=<lb domain>
