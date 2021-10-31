#!/bin/bash
#Configure kubectl
aws eks --region $(terraform output -raw region) update-kubeconfig --name $(terraform output -raw cluster_name)

#Download and unzip the metrics server by running the following command.

wget -O v0.3.6.tar.gz https://codeload.github.com/kubernetes-sigs/metrics-server/tar.gz/v0.3.6 && tar -xzf v0.3.6.tar.gz

# Deploy the metrics server to the cluster by running the following command.

kubectl apply -f metrics-server-0.3.6/deploy/1.8+/

#verify the metric server is deploy
kubectl get deployment metrics-server -n kube-system

#The following command will schedule the resources necessary for the dashboard.
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.0-beta8/aio/deploy/recommended.yaml

kubectl proxy