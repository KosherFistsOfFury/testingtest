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
        sh '''BRANCH=$(git rev-parse --abbrev-ref HEAD)

if [[ "$BRANCH" == "develop" ]]; then
  git checkout develop
  git add -A
  git reset -- Jenkinsfile
  git checkout master
  git merge origin/develop -m \'MERGE Auto from deliver step pass\'
  
  echo \'AUTO-MERGE from Develop to Master\';
  exit 1;
elif [[ "$BRANCH" == "master" ]]; then
  git checkout master
  git add -A
  git reset -- Jenkinsfile
  git checkout production
  git merge origin/master -m \'MERGE Auto from master step pass\'

  echo \'AUTO-MERGE from Master to Production\';
  exit 1;
else
  echo \'No Deliver step needed for "$BRANCH".\'
fi'''
      }
    }
  }
}