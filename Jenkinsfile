pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker build -t app .'
            }
        }
        stage('TEST') {
            steps {
                echo 'test'
            }
        }
        stage('DEPLOY') {
            steps {
                echo 'deploy'
            }
        }
    }
    post {
        always {
		echo 'Hemos llegado al final'
        }
        failure {
		echo 'Pero a cascado'
        }
    }
}
