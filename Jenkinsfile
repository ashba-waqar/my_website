pipeline {
    agent any
    tools {
        nodejs "NodeJS"
    } 
    stages {
         stage('Checkout') {
             steps {
                 checkout scm
             }
         }
         stage('Install Dependencies') {
             steps {
                 sh 'npm ci'
             }
         }
         stage('Test') {
              steps {
                  sh 'npm test'
              }
         }
         stage('Package') {
             steps {
                 sh 'npm run build'
             }
         }
    }
}
