pipeline {
    agent any

    stages {
        stage('scm') {
            steps {
                git 'https://github.com/ashish0095/project.git'
            }
        }
        stage('docker build') {
            steps {
                sh 'sudo docker build  -t  ashish0095/pipeline:v2' . 
           }
        }
        stage('docker images') {
            steps {
                sh 'sudo docker images'
            }
        }
        stage('docker rm') {
            steps {
                sh 'sudo docker rm -f pipe2'
            }
        }
        stage('docker run') {
            steps {
                sh 'sudo docker run -d --name pipe2  -p 8084:80 ashish0095/pipeline:v2'
            }
        }
        stage('docker login') {
            steps {
                sh 'sudo docker login -u ${dockerhub_username} -p ${dockerhub_password}'
            }
        }
        stage('docker push') {
            steps {
                sh 'sudo docker push ashish0095/pipeline:v2'
            }
        }
        stage('print success') {
            steps {
                sh 'echo success'
            }
        }
    }
}
