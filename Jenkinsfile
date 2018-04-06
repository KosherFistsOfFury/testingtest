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
        sh '''git checkout master
git add -A
git reset -- Jenkinsfile
git checkout production
git merge origin/master -m \'MERGE Auto from masterstep pass\''''
      }
    }
  }
}