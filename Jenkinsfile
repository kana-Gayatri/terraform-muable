pipeline {
  agent { label 'WORKSTATION' }

environment{
    ACTION = "apply"
    ENV =  "dev"
    SSH = credientials('Centos_SSH')
}

parameters { choice(name: 'ENV', choices: ['dev', 'prod'], description: 'Choose Environment') }
parameters { string(name: 'ACTION', defaultValue: 'apply', description: 'Choose an Action to start or destroy') }
options{
    ansicolor ("xterm")
    disableConcurentBuilds()
}

//triggers { pollSCM('H/2 * * * *') }
  stages {

    stage('VPC') {
    steps{
     sh 'echo ${SSH} >/tmp/out'
      sh '''
        cd vpc
        make ${ENV}-${ACTION}
      '''
    }
}
    stage('DB') {
    input {
           message "Should we continue?"
           ok "Yes, we should."
           submitter "admin"
           }
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