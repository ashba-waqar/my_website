pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build / Verify') {
            steps {
                sh 'echo "HTML Website Build Successful!"'
            }
        }
    }
}
