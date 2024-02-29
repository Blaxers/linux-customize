pipeline {
    agent {
        docker { image 'ubuntu:20.04' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'free --version'
                sh 'hostname -I'
//                 sh 'top'
                sh 'awk -W -version'
                sh 'df --version'
            }
        }
    }
}