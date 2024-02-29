pipeline {
    agent {
        docker { image 'ubuntu:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'ls -lah'
                sh 'cat /etc/os-release'
                bash './main.sh'
                bash 'whoami'
            }
        }
    }
}