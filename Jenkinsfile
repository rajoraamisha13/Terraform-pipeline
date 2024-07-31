pipeline {
    agent any

    environment {
        // Define environment variables for AWS credentials
        AWS_ACCESS_KEY_ID = credentials('aws-access-key-id')
        AWS_SECRET_ACCESS_KEY = credentials('aws-secret-access-key')
    }
    
    stages {
        stage('Checkout Code') {
            steps {
                // Checkout the code from the repository
                sh 'git clone https://github.com/rajoraamisha13/Terraform-pipeline.git'  // Clone the repository
                sh 'cd Terraform-pipeline'  // Change directory to the cloned repository
            }
        }
        
        stage('Initialize Terraform') {
            steps {
                // Run Terraform initialization
                sh 'cd Terraform-pipeline && terraform init'
            }
        }
        
        stage('Plan Terraform') {
            steps {
                // Run Terraform plan to review changes
                sh 'cd Terraform-pipeline && terraform plan'
            }
        }
        
        stage('Apply Terraform') {
            steps {
                // Run Terraform apply to provision the resources
                sh 'cd Terraform-pipeline && terraform apply -auto-approve'
            }
        }
    }

    post {
        always {
            // Clean up workspace after build
            cleanWs()
        }
    }
}
