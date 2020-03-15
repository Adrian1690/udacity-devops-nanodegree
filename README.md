# Udacity DevOps Nanodegree

This project is created to finish DevOps Nanodegree from [Udacity](https://wwww.udacity.com).

In this project `hello-node` node app will be containerized, uploaded to DockerHub and deploy a AWS Kubernetes cluster.

App URL : [ab263e96d668f11eaa9ad066dcdc1df8-837641097.us-west-2.elb.amazonaws.com](http://ab263e96d668f11eaa9ad066dcdc1df8-837641097.us-west-2.elb.amazonaws.com)

Docker Image: [adrian1690/hello-node:v2](https://hub.docker.com/r/adrian1690/hello-node/tags)

Worker Nodes in us-west-2 region use optimized image ec2 `ami-0907724389e8705d9`

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

## Files and folders explanation

- CloudFormation: Contains files to create cluster infraestructure in AWS Cloudformation.
    - amazon-eks-vpc: First create the network insfrastructure.
    - amazon-eks-cluster: Create cluster with secutiry group and subnet created.
    - amazon-eks-nodegroup: Create worker nodes.

- Dockerfile: File docker configuration to build docker image.
- hello-node-deployment-service: file to create a deployment and service with kubectl.
- index.html: main project file deployed.
- Jenkinsfile: Steps to lint, build docker image and push to docker hub.
- run_kubernetes.sh: script to deploy image builded in Jenkins pipeline.


## Deployment Type

In this project use rolling deployment. When a new version of app is deployed, the replica set create new pods in background with new app version, these new pods replace the old pods one by one until all pods are updated.

Follow these resources to create a cluster in aws:

- [Amazon EKS Getting Started](https://docs.aws.amazon.com/eks/latest/userguide/getting-started-console.html)
- [https://logz.io/blog/amazon-eks-cluster/](https://logz.io/blog/amazon-eks-cluster/)




