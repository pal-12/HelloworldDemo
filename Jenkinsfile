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
