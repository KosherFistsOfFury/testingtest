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
<<<<<<< HEAD
        sh '''git checkout develop
git add -A
git reset -- Jenkinsfile
git fetch
git checkout origin/master
git merge origin/develop -m \'MERGE Auto from deliver step pass\''''
=======
        sh '''git checkout master
git add -A
git reset -- Jenkinsfile
git checkout production
git merge master -m \'MERGE Auto from masterstep pass\''''
>>>>>>> f1cae9346343903f618d015e94f489b4ed996738
      }
    }
  }
}
