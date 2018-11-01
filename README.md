# Rancher2.0_rke
create Rancher K8s cluster in your local machine

# Steps
1. Download all script and run chmod a+x *.sh
2. run ./preinstall/preinstall_tool_rancher2.0.sh in your local machine
3. use scp to copy preinstall_docker_XXX.sh depence what os to nodes and run it to install docker in all nodes
4. update ./XXX/nodeslist.sh for ssh connection with username and hostname
5. run ./XXX/ssh_init.sh to generate ssh key and add pub key to all server
6. update cluster_xxx.yml
7. run ./XXX/setup_rancher_xxxx.sh
8. somehow some time helm will have issue you can run step 7 script one line by online that after rke up
