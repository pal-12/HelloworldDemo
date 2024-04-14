pipeline {
    agent any
    environment {
        // Specify JAVA_HOME for the entire pipeline
        JAVA_HOME = "/usr/lib/jvm/java-17-openjdk-amd64"
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/pal-12/HelloworldDemo'
            }
        }
       
        stage('Build Docker Image') {
            steps {
                script {
                    sh 'docker build -t hello-world-demo .'
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
