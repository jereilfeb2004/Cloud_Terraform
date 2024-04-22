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
                    git branch: 'main', credentialsId: env.DevOps_deploy, url: env.https://github.com/jereilfeb2004/Cloud_Terraform.git'

                }
            }
        }
        // Add more stages for your pipeline as needed
    }
    // Optionally, you can add post-build actions, such as notifications or clean-up steps
    post {
        always {
            // Clean up workspace or other actions
        }
    }
}
