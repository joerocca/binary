#!/usr/bin/env groovy

pipeline {

    agent {
    	dockerfile {
	    args '-u root'
	}
    }

    stages {
	stage('Clean Up') {
	   steps {
		sh 'rm -rf *'
	   }
	}
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'python -B binary.py'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing...'
                sh 'python -B -m pytest'
            }
        }
    }
}
