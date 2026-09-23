pipeline {
    agent {
        docker {
            image 'node:alpine'
        }
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Verify Agent') {
            steps {
                sh 'node -v'
                sh 'echo "Running inside Docker container successfully!"'
            }
        }
    }
    post {
        success {
            archiveArtifacts artifacts: 'website.html', fingerprint: true
            echo 'Build was successful! Artifacts archived.'
        }
        failure {
            echo 'Build failed. Sending notification...'
        }
    }
}
