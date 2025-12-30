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
                    dir('Frontend'){
                    sh 'chmod +x ./build.sh'
                    sh './build.sh'  // If you have a build script, execute it
                    }
                }
            }
        }
    }
    post {
        success {
            // Actions to take on success
            echo 'Build and deploy successful for frontend!' //done
        }
        failure {
            // Actions to take on failure
            echo 'Build failed for forntend!' //fail
        }
    }
}
