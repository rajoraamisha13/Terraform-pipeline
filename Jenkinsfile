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
                sh 'git checkout https://github.com/rajoraamisha13/Terraform-pipeline.git'  // Replace with your repository URL
            }
        }
        
        stage('Initialize Terraform') {
            steps {
                // Run Terraform initialization
                sh 'terraform init'
            }
        }
        
        stage('Plan Terraform') {
            steps {
                // Run Terraform plan to review changes
                sh 'terraform plan'
            }
        }
        
        stage('Apply Terraform') {
            steps {
                // Run Terraform apply to provision the resources
                sh 'terraform apply -auto-approve'
            }
        }
    }
 }
