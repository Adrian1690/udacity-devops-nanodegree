pipeline {
    agent any
    stages {
        stage('Lint HTML') {
            steps {
                sh 'tidy -q -e *.html'
            }
        }
        stage('Build Docker Image'){
            steps{
                sh 'sudo docker build --tag=adrian1690/hello-node:v2 .'
                sh 'sudo docker image ls '
            }
        }
        stage('Upload Docker image to Docker Hub'){
            steps{
                withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerpwd')]) {
                    sh "sudo docker login -u adrian1690 -p ${dockerpwd}"
                    sh 'sudo docker push adrian1690/hello-node:v2'
                }
            }
        }
    }
}