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
        echo 'This is the Deliver step.'
        sh '''git checkout develop
git add -A
git reset -- Jenkinsfile
git checkout origin/master
git merge origin/develop -m \'MERGE Auto from deliver step pass\''''
      }
    }
  }
}
