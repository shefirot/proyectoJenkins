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
                sh '/bin/nc -vz loaclhost 22'
                sh '/bin/nc -vz loaclhost 80'
            }
        }
        stage('DEPLOY') {
            steps {
                echo 'deploy'o
		sh 'docker tag app:latest app:stable'
		sh 'docker push app:stable'
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
