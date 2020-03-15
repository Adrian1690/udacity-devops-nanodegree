pipeline {
    agent any
    stages {
        
        stage('Create a deployment and service to expose image created') {
            steps{
                sh 'sudo kubectl apply -f hello-node-deployment-service.yml'
            }
        }
    }
}