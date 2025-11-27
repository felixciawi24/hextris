pipeline {
    agent any

    stages {
        stage('Pull SCM') {
            steps {
                git branch: 'gh-pages', url: 'https://github.com/felixciawi24/hextris.git'
            }
        }
        
        stage('Containerized Apps') {
            steps {
                sh'''
                docker build -t felixciawi/hextris:v1.0 .
                '''
            }
        }

        stage('Push to Registry') {
            steps {
                sh'''
                docker push felixciawi/hextris:v1.0
                '''
            }
        }

        stage('Deploy Apps') {
            steps {
                sh'''
                kubectl apply -f manifest/
                '''
            }
        }   
    }
}