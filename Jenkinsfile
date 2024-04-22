pipeline {
    agent any
    
    environment {
        TF_VERSION = 'latest' // Specify the Terraform version here
    }
    
    stages {
        stage('Checkout') {
            steps {
                // Clone the repository
                git 'https://github.com/jereilfeb2004/Cloud_Terraform.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                // Install Terraform
                script {
                    def tfHome = tool name: 'Terraform', type: 'hudson.plugins.terraform.TerraformInstallation'
                    env.PATH = "${tfHome}/bin:${env.PATH}"
                }
                
                // Initialize Terraform
                sh 'terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                // Run Terraform plan
                sh 'terraform plan'
            }
        }
    }
    
    post {
        always {
            // Clean up Terraform files
            deleteDir()
        }
    }
}
