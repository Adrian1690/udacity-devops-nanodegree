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
                sh 'docker build --tag=adrian1690/hello-node:v1 .'
                sh 'docker image ls'
            }
        }
        stage('Upload Docker image to Docker Hub'){
            steps{
                withCredentials([string(credentialsId: 'docker-pwd', variable: 'dockerpwd')]) {
                    sh "docker login -u adrian1690 -p ${dockerpwd}"
                    sh 'docker push adrian1690/hello-node:v1'
                }
            }
        }
    }
}