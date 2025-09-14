pipeline {
    agent any

    stages {
        stage('Code Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/danielshd/jenkins.git'
            }
        }

        stage('Docker Build + Tag') {
            steps {
                script {
                    sh 'docker build -t jenkins-flask:latest .'
                }
            }
        }
    }
}
