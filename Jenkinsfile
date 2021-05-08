pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh 'cd Infrastructure/
                sh  && terraform init'
                sh 'cd Infrastructure/ && terraform apply -auto-approve'
            }
        }
       
    }
}
