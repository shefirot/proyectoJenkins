pipeline {
    agent any
    stages {
        stage('Docker Build') {
            steps {
                sh 'docker build -t jenkinstest:latest .'
            }
        }
        stage('TEST') {
            steps {
                echo 'test'
                sh 'docker run --name jenkinstest -id -p 80:80 jenkinstest:latest'
                sh '/bin/nc -vz localhost 80'
            }
	    post {
		always{
			sh 'docker container stop jenkinstest'
			sh 'docker rm jenkinstest'
                }
            }
        }
        stage('Push Registry Docker Hub') {
            steps {
                echo 'deploy'
		sh 'docker tag jenkinstest:latest shefirot/jenkinstest:stable'
		sh 'docker push shefirot/jenkinstest:stable'
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
