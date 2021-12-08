pipeline {
  agent { label 'WORKSTATION' }

  stages {

    stage('VPC') {
      sh '''
        cd vpc
        make dev-apply
      '''
    }

    stage('DB') {
      sh '''
        cd db
        make dev-apply
      '''
    }

    stage('ALB') {
      sh '''
        cd alb
        make dev-apply
      '''
    }

  }
}
