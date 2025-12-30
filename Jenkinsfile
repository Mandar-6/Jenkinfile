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

        stage('Frontend-Build') {
            steps {
                script {
                    // Example build script
                    dir('Frontend')
                    sh 'chmod +x ./build.sh'
                    sh './build.sh'  // If you have a build script, execute it
                }
            }
        }

        stage('Frontend-Test') {
            steps {
                script {
                    // Add steps for running tests here, e.g., unit tests
                    dir('Frontend')
                    sh './test,sh'  // Replace with your test command if using Node.js
                }
            }
        }

        stage('Frontend-Deploy') {
            steps {
                script {
                    // If you have a deploy script, run it
                    dir('Frontend')
                    sh './deploy.sh'  // Example deploy script
                }
            }
        }
    }

    post {
        success {
            // Actions to take on success
            echo 'Build and deploy successful for frontend!'
        }
        failure {
            // Actions to take on failure
            echo 'Build failed for forntend!'
        }
    }
}
