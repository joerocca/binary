#!/usr/bin/env groovy

pipeline {

    agent {
    	dockerfile {
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
}
