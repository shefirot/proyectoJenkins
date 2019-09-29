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
                sh '/bin/nc -vz localhost 22'
                sh '/bin/nc -vz localhost 8080'
            }
        }
        stage('DEPLOY') {
            steps {
                echo 'deploy'
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
