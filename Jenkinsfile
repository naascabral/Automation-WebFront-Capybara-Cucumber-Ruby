pipeline {
  agent {
    docker {
        image "ruby:alpine"
        args "--network=skynet -u root --privileged"
    }
  }
  stages {
    stage("Build") {
      steps {
        sh "chmod +x build/alpine.sh"
        sh "./build/alpine.sh"
        sh "bundle install"
      }
    }
    stage("Test") {
      steps {
        sh "bundle exec cucumber -f pretty -f html -o report.html -p ci"
      }
      post {
        always {
          cucumber fileIncludePattern: '**/*.json', jsonReportDirectory: 'log', sortingMethod: 'ALPHABETICAL'
        }
      }
    }
  }
}
