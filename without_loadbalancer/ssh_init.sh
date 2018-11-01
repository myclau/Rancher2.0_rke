#!/bin/bash
mkdir -p .key
cd .key
ssh-keygen -t rsa -b 4096 -N '' -f rancher_rsa

cat rancher_rsa
cat rancher_rsa.pub

. ../nodeslist.sh
for ((i = 0; i < ${#nodes[@]}; ++i)); do
	ssh-copy-id -i rancher_rsa.pub ${nodes[$i]}
done
