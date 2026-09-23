pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Verify') {
            steps {
                sh 'echo "Running pipeline successfully!"'
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
