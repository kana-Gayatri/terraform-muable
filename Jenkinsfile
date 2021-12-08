pipeline {
    agent any
    stages {
        stage('vpc') {
            steps {
                cd dev
                make dev-apply
            }
        }
        stage('DB') {
            steps {
                cd db
                make dev-apply
            }
        }
        stage('ALB') {
            steps {
                cd alb
                make dev-apply
            }
        }
    }
}