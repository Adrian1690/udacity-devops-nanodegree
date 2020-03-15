# Udacity DevOps Nanodegree

This project is created to finish DevOps Nanodegree from [Udacity}(https://wwww.udacity.com).

Node app containerized, pushed to dockerhub and deployed to aws kubernetes cluster.

## Requirements

Install the following components in computer that runs the project.

- Node
- Jenkins
- Docker
- Kubernetes 
- AWS CLI: Is necesary to configure your credentials

Also get an account in Docker Hub to upload docker images.

## Run hello-node locally

To run hello-node use `node server.js` command.

# Files and folders explanation

- CloudFormation: Contains files to create cluster infraestructure in AWS Cloudformation.
    - amazon-eks-vpc: First create the network insfrastructure.
    - amazon-eks-cluster: Create cluster with secutiry group and subnet created.
    - amazon-eks-nodegroup: Create worker nodes.

- Dockerfile: File docker configuration to build docker image.
- hello-node-deployment-service: file to create a deployment and service with kubectl.
- index.html: main project file deployed.
- Jenkinsfile: Steps to lint, build docker image and push to docker hub.
- run_kubernetes.sh: script to deploy image builded in Jenkins pipeline.


Follow these resources to create a cluster in aws:

- [Amazon EKS Getting Started](https://docs.aws.amazon.com/eks/latest/userguide/getting-started-console.html)
- [https://logz.io/blog/amazon-eks-cluster/](https://logz.io/blog/amazon-eks-cluster/)




