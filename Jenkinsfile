pipeline {
    agent any
    
    environment {
        AWS_ACCESS_KEY_ID = credentials('AWS_Key')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secrey')
        AWS_DEFAULT_REGION = 'ap-southeast-1'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/jereilfeb2004/Cloud_Terraform.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'cd your-terraform-repo && terraform init'
            }
        }
        
        stage('Terraform Plan') {
            steps {
                sh 'cd your-terraform-repo && terraform plan -out=tfplan'
            }
        }
        
        stage('Terraform Apply') {
            steps {
                sh 'cd your-terraform-repo && terraform apply -auto-approve tfplan'
            }
        }
    }
    
    post {
        always {
            echo 'Cleaning up...'
            sh 'cd your-terraform-repo && terraform destroy -auto-approve'
        }
    }
}
