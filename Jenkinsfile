#!/usr/bin/env groovy

pipeline {

    agent {
        docker {
            dockerfile true
            args '-u root'
        }
    }

    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'python binary.py'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'python -m pytest'
            }
        }
    }
}i
