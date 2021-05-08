pipeline {
    agent any
    parameters{
        string(name: "Name", defaultValue: "", description: "Just a string parameter")
        choice(name: "Last Name", choices: ['Calik','Kalik'], description: "Choice parameter")
    }
    stages {
        stage('build') {
            steps {
                echo 'building the application'
            }
        }
        stage('Test') {
            steps {
                echo 'testing the application'
            }
        }
    }
}
