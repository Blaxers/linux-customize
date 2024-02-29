pipeline {
    agent {
        docker { image 'ubuntu:latest' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'ls -lah'
                bash 'cat /etc/os-release'
                bash './main.sh'
                bash 'whoami'
            }
        }
    }
}