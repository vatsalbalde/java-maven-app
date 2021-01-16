pipeline {
    agent any
    environment {
        PASS = credentials('dockerhub-registry-pass')
    }
    stages {
        stage('BUILD') {
            steps{
                sh './jenkins/build/mvn.sh mvn -B -DskipTests clean package'
                sh './jenkins/build/script.sh'
            }
        }
        stage('TEST') {
            steps {
                sh './jenkins/test/mvn.sh mvn test'
            }
        }
        stage('PUSH') {
            steps {
                sh './jenkins/push/push.sh'
            }
        }    
        stage('DEPLOY') {
            steps {
                sh './jenkins/deploy/deploy.sh'
            }
        }
    }
}

