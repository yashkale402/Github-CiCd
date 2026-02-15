pipeline {
    agent { label 'dev' }

    stages {

        stage('Clean Old Deployment') {
            steps {
                sh 'sudo rm -rf /var/www/html/*'
            }
        }

        stage('Deploy New Code') {
            steps {
                sh 'sudo cp -r * /var/www/html/'
            }
        }

        stage('Reload Nginx') {
            steps {
                sh 'sudo systemctl reload nginx'
            }
        }
    }

    post {
        success {
            echo "===== Deployment Completed Successfully ====="
        }
        failure {
            echo "===== Deployment Failed ====="
        }
    }
}
