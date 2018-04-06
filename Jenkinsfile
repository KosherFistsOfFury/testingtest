pipeline {
  agent any
  stages {
    stage('Test') {
      steps {
        echo 'This is the Test stage. And then some?'
      }
    }
    stage('Deliver') {
      steps {
        echo 'This is the Deliver step, but there is no delivery since this is already production (unless were real, then there\'d be a bunch of release_v_0-X deliveries).'
      }
    }
  }
}