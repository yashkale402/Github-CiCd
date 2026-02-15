pipeline {
    agent any

    stages {

        stage("Code") {
            steps {
                echo "Cloning From GitHub"
                git url: 'https://github.com/yashkale402/Node-todo-cicd.git', branch: 'master'
            }
        }

        stage("Test & Build") {
            steps {
                echo "Test & Build"
                sh "docker build -t node-app ."
            }
        }

        stage("Deploy") {
            steps {
                echo "Deployment Successfully"
               sh "docker compose down && docker compose up -d"
            }
        }

        stage("Done") {
            steps {
                echo "Your Pipeline Successfully Run"
            }
        }

    }
}
