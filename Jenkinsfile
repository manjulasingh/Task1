// Declarative //
pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
                //sh 'docker build -t dockertest1 .'
                dockerImage = docker.build('test1_demo:latest', '.')
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                dockerImage.inside {
                        sh 'python3 --version'
                    }
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                docker.withRegistry('', 'Dockercredentials') {
                        dockerImage.push()
                    }	
            }
        }
    }
}