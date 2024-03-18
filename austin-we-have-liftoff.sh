#!/bin/bash
### these require aws-cli, kubectl, and eksctl

eksctl create cluster --name avalon-wtf2 --region us-west-2 --zones us-west-2a,us-west-2b --nodegroup-name avalon-wtf2 --node-type t2.medium --nodes 1 --nodes-min 1 --nodes-max 2 --managed
kubectl apply -f manifest.yaml
# This part deploys ingress services - hosts won't be assigned an address without it.
kubectl apply -f https://github.com/kubernetes/ingress-nginx/blob/main/deploy/static/provider/aws/deploy.yaml
kubectl apply -f ingress.yaml
