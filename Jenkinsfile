pipeline {
    agent any
    
    environment {
        GIT_URL = 'https://github.com/jereilfeb2004/Cloud_Terraform.git'
        CREDENTIALS_ID = 'DevOps_deploy'
    }

    stages {
        stage('Clone Repository') {
            steps {
                script {
                    // Clone the Git repository using the provided credentials
                    git branch: 'main', credentialsId: env.CREDENTIALS_ID, url: env.GIT_URL
                }
            }
        }
        stage('Test Terraform Templates') {
            steps {
                // Initialize Terraform
                sh 'terraform init'
                // Validate Terraform configurations
                sh 'terraform validate'
                // Generate and display Terraform plan
                sh 'terraform plan -out=tfplan'
                sh 'terraform show -json tfplan > tfplan.json'
                stash includes: 'tfplan.json', name: 'terraform_plan'
            }
        }
    }
}
