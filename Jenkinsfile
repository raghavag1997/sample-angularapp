pipeline {
    agent any
    tools {
        nodejs 'mynode'
    }

    stages {
        stage('Pulling code') {
            steps {
                git branch: 'main', url: 'https://github.com/raghavag1997/sample-angularapp.git'
            }
        }
        stage('Installing the packages') {
            steps {
                sh 'npm install'
            }
        }
        stage('Bulding the package') {
            steps {
                sh 'npm run build --prod'
            }
        }
    }
}
