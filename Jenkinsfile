pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/pal-12/HelloworldDemo'
            }
        }
        stage('build') {
            steps {
              sh 'mvn -f hello-world-demo/pom.xml clean install'
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
