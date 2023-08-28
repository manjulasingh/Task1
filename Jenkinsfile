// Declarative //
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                script {
                echo 'Building..'
                //sh 'docker build -t dockertest1 .'
                dockerImage = docker.build('manjulasingh46/test1_gitdemo:latest', '.')
                }
            }
        }
        stage('Test') {
            steps {
                script {
                echo 'Testing..'
                dockerImage.inside {
                        sh 'python3 --version'
                }
                    }
            }
        }
        stage('Deploy') {
            steps {
                script {
                echo 'Deploying....'
                docker.withRegistry('', 'Dockercredentials') {
                        dockerImage.push()
                }
                    }	
            }
        }
    }
}