pipeline {
    agent {
        docker { image 'ubuntu:20.04' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'free --version'
                sh 'ip -V'
                sh 'top --help'
                sh 'awk --help'
                sh 'df --version'
            }
        }
    }
}