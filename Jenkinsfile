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
        bat 'DevToMaster.bat'
        sh '''git checkout master
git merge develop -m \'MERGE Auto from deliver step pass\'
git push git@github.com:KosherFistsOfFury/testingtest.git'''
      }
    }
  }
}