pipeline {
    agent any
    environment {
        AWS_ACCESS_KEY_ID     = credentials('jenkins-aws-secret-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('jenkins-aws-secret-access-key')
    }
    stages {
        stage('Terraform Init') {
            steps {
                sh '''
                   cd Infrastructure/
                   terraform init
                '''
            }
        }
        stage('Terraform Apply or Destroy') {
            input {
                message 'Apply or Destroy?'
                ok  'Do it!'
                parameters {
                    string(name: 'TARGET_ENVIRONMENT', defaultValue: 'apply', description: 'Target Deployment Environment')
                }
            }
            steps {
                sh """
                   cd Infrastructure/
                   terraform init
                   terraform ${TARGET_ENVIRONMENT} -auto-approve
                """
            }
        }

    }
}

