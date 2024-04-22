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
                // You can add more commands here to validate the checkout
            }
        }
    }
}
