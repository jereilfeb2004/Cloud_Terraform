pipeline {
    agent any
    
    stages {
        stage('Checkout') {
            steps {
                // Checkout code from GitHub repository
                script {
                    // Define GitHub credentials
                    def gitHubCredentials = credentials('DevOps_deploy')
                    
                    // Clone repository
                    git branch: 'main', credentialsId: gitHubCredentials.id, url: 'https://github.com/jereilfeb2004/Cloud_Terraform.git'
                }
            }
        }
        stage('Test') {
            steps {
                // Add your testing steps here
                sh 'echo "Running tests..."'
                // Add your test commands here
            }
        }
    }
    post {
        always {
            // Clean up workspace
            cleanWs()
        }
    }
}
