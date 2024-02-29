pipeline {
  agent none
  stages {
    stage('pull') {
      agent {
        docker { image 'docker:latest' }
      }
      steps {
        sh 'docker --version'
        sh 'cat /etc/os-release'
      }
    }
    stage ('ubuntu'){
        agent {
            docker { image 'ubuntu:latest' }
    }
    steps {
        sh 'cat /etc/os_release'
    }
    }
  }
}