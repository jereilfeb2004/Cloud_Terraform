pipeline {
    agent any

    environment {
        GIT_REPO_URL = 'https://github.com/jereilfeb2004/Cloud_Terraform.git'
    }

    stages {
        stage('Checkout') {
            steps {
                // Check out the Git repository using the defined URL
                git branch: 'main', url: env.GIT_REPO_URL
            }
        }
        stage('Terraform Init') {
            steps {
                // Initialize Terraform in the project directory
                sh 'terraform init'
            }
        }
        stage('Terraform Plan') {
            steps {
                // Generate a Terraform execution plan
                sh 'terraform plan -out tfplan'
                sh 'terraform show -no-color tfplan > tfplan.txt'
            }
        }
    }
}
