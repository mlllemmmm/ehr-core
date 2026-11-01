pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/mlllemmmm/ehr-core.git'
            }
        }
        stage('HIPAA Compliance Lint') {
            steps {
                sh 'grep -x "AUDIT_LOGGING=ENABLED" hipaa.properties && echo "HIPAA lint PASSED"'
            }
        }
        stage('Docker Package') {
            steps {
                sh 'docker build -t ehr-portal:2.0 .'
            }
        }
    }
    post {
        success { echo 'EHR pipeline succeeded' }
        failure { echo 'EHR pipeline failed' }
    }
}
