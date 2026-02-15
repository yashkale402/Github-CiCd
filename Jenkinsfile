pipeline {
    agent { label 'dev' }

    stages {

        stage('Checkout Code') {
            steps {
                echo "===== Pulling Latest Code ====="
                git branch: 'main', url: 'https://github.com/your-repo/your-project.git'
            }
        }

        stage('Clean Old Deployment') {
            steps {
                echo "===== Cleaning Old Files ====="
                sh '''
                sudo rm -rf /var/www/html/*
                '''
            }
        }

        stage('Deploy New Code') {
            steps {
                echo "===== Deploying New Files ====="
                sh '''
                sudo cp -r * /var/www/html/
                '''
            }
        }

        stage('Reload Nginx') {
            steps {
                echo "===== Reloading Nginx ====="
                sh '''
                sudo systemctl reload nginx
                '''
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
