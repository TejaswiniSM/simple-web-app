pipeline {
    agent any

    stages {
        stage('Clone Code') {
            steps {
                echo 'Code cloned from GitHub'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'docker build -t simple-web-app:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat '''
                docker rm -f simple-web-app || exit 0
                docker run -d -p 8081:80 --name simple-web-app simple-web-app:latest
                '''
            }
        }
    }
}
