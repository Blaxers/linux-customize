pipeline {
    agent {
        docker { image 'ubuntu:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'cat /etc/os-release'
                sh 'ls -lah'
            }
        }
    }
}