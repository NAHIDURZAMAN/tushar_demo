pipeline {
    agent any

    stages {
        stage('Checkout') {
            steps {
                echo '📥 Cloning repository...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo '🐳 Building Docker image from Dockerfile...'
                script {
                    // Customize image name as needed
                    def imageName = "my-php-app:${env.BUILD_NUMBER}"
                    sh "docker build -t ${imageName} ."
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                echo '🚀 Running PHP application container...'
                script {
                    sh 'docker run -d -p 8080:80 my-php-app:${BUILD_NUMBER}'
                }
            }
        }
    }

    post {
        success {
            echo '✅ PHP Docker image built and container started successfully.'
        }
        failure {
            echo '❌ Build failed.'
        }
    }
}
