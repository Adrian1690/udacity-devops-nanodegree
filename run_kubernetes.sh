#!/usr/bin/env bash

# Create a deployment an expose using AWS LoadBalancer

# Step 1
# Run kubectl 
kubectl apply -f hello-node-deployment-service.yml

# Step 3:
# List kubernetes deployments
kubectl get deployments

# Step 4:
# List Kubernetes services and check the external ip created
kubectl get services

