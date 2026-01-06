pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/TejaswiniSM/simple-web-app.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build('simple-web-app:latest')
                }
            }
        }

        stage('Deploy Container') {
            steps {
                script {
                    sh 'docker rm -f simple-web-app || true'
                    sh 'docker run -d -p 8081:80 --name simple-web-app simple-web-app:latest'
                }
            }
        }
    }
}
