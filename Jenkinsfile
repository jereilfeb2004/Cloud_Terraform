pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                // Check out the Git repository
                git branch: 'main', url: 'https://github.com/jereilfeb2004/Cloud_Terraform.git'
            }
        }
        stage('Validate Git Pull') {
            steps {
                // Run a command to validate Git pull
                sh 'ls -al'
                // Show ls -al result on console output
                script {
                    def lsResult = sh(script: 'ls -al', returnStdout: true).trim()
                    echo "Result of 'ls -al':\n${lsResult}"
                }
            }
        }
    }
}
