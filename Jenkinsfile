pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/pal-12/HelloworldDemo'
            }
        }
        stage('Build') {
            steps {
                sh 'mvn clean package'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t hello-world-demo https://github.com/pal-12/HelloworldDemo'
                }
            }
        }
        stage('Deploy') {
            steps {
                script {
                    sh 'docker run -d --name hello-world-demo -p 8282:8282 hello-world-demo'
                }
            }
        }
    }
}
