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
   }
}
stage('build docker image') {
                steps {
                     script {
                        sh 'docker build -t https://github.com/pal-12/HelloworldDemo'
                    } 
                }
        }
        
        stage('deploy') {
                steps {
                     script {
                        sh 'docker run -d --hellooworlddemo -p 8282:8282 https://github.com/pal-12/HelloworldDemo
                    } 
                }
        }
}
}
