#!/bin/bash
cd ~
wget https://github.com/rancher/rke/releases/download/v0.1.11/rke_linux-amd64 && chmod +x rke_linux-amd64

sudo  mv rke_linux-amd64 /usr/local/bin/rke

wget https://storage.googleapis.com/kubernetes-helm/helm-v2.11.0-linux-amd64.tar.gz
tar -zxvf helm-v2.11.0-linux-amd64.tar.gz
sudo mv linux-amd64/helm /usr/local/bin/helm