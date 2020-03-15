pipeline {
    agent any
    stages {
        
        stage('Create a deployment and service to expose image created') {
            steps{
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'aws-creds-access', credentialsId: 'aws-credentials', secretKeyVariable: 'aws-creds-secret']]) {
                    sh 'sudo /home/ubuntu/kubectl version'
                }
                
            }
        }
    }
}