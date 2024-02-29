pipeline {
    agent {
        docker { image 'ubuntu:latest' }
    }
    stages {
        stage('Test') {
            steps {
                bash 'cat /etc/os-release'
                bash './main.sh'
            }
        }
    }
}