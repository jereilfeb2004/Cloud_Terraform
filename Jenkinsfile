pipeline {
    agent any
    
    environment {
        TF_WORKING_DIR = 'terraform' // Directory where your Terraform files are located
        AWS_REGION = 'ap-southeast-1'
    }
    
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/jereilfeb2004/Cloud_Terraform.git'
            }
        }
        
        stage('Terraform Init') {
            steps {
                sh 'terraform init $TF_WORKING_DIR'
            }
        }
        
        stage('Terraform Apply') {
            when {
                branch 'main'
            }
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'Cloud_DevOps', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                    sh 'terraform apply -auto-approve $TF_WORKING_DIR'
                }
            }
        }
        
        stage('Deploy to AWS') {
            when {
                branch 'main'
            }
            steps {
                withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'Cloud_DevOps', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']]) {
                    // Add your AWS deployment steps here
                }
            }
        }
    }
    
    post {
        success {
            slackSend color: '#36a64f', message: "Pipeline build successful!"
        }
        failure {
            slackSend color: '#ff0000', message: "Pipeline build failed!"
        }
    }
}
