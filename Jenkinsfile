pipeline {
    agent any  // Use any available agent to run the pipeline

    environment {
        // You can define environment variables here if needed
        MY_ENV_VAR = "some_value"
    }

    stages {
        stage('Checkout') {
            steps {
                // Checkout the code from GitHub
                checkout scm
            }
        }

        stage('Build') {
            steps {
                script {
                    // Example build script
                    sh 'chmod +x ./build.sh'
                    sh './build.sh'  // If you have a build script, execute it
                }
            }
        }

        stage('Test') {
            steps {
                script {
                    // Add steps for running tests here, e.g., unit tests
                    sh 'npm run'  // Replace with your test command if using Node.js
                }
            }
        }

        stage('Deploy') {
            steps {
                script {
                    // If you have a deploy script, run it
                    sh './deploy.sh'  // Example deploy script
                }
            }
        }
    }

    post {
        success {
            // Actions to take on success
            echo 'Build and deploy successful!'
        }
        failure {
            // Actions to take on failure
            echo 'Build failed!'
        }
    }
}
