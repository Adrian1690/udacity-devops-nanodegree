pipeline {
    agent any
    stages {
        
        stage('Create a deployment and service to expose image created') {
            steps{
                sh 'sudo -s && kubectl apply -f hello-node-deployment-service.yml'
            }
        }
    }
}