pipeline {
  agent { label 'WORKSTATION' }

environment{
    ACTION = "apply"
    ENV =  "dev"
    SSH = credientials('Centos_SSH')
}
options{
    ansicolor ("xterm")
    disableConcurentBuilds()
}
  stages {

    stage('VPC') {
    steps{
      sh '''
        cd vpc
        make ${ENV}-${ACTION}
      '''
    }
}
    stage('DB') {
    steps{
      sh '''
        cd db
        make ${ENV}-${ACTION}
      '''
    }
    }

    stage('ALB') {
     steps{
      sh '''
        cd alb
        make ${ENV}-${ACTION}
      '''
    }

  }
}
}