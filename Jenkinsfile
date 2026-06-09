pipeline {
agent any

triggers {
    pollSCM('H/2 * * * *')
}

environment {
    DOCKER_HUB_USER = 'ajaygangwar945'
    IMAGE_NAME      = 'aws-navigator'
    IMAGE_TAG       = "${env.BUILD_NUMBER}"
    REGISTRY        = 'docker.io'
}

stages {

    stage('Checkout Code') {
        steps {
            checkout scm
        }
    }

    stage('Build Docker Image') {
        steps {
            bat "docker build -t %DOCKER_HUB_USER%/%IMAGE_NAME%:%BUILD_NUMBER% ."
            bat "docker tag %DOCKER_HUB_USER%/%IMAGE_NAME%:%BUILD_NUMBER% %DOCKER_HUB_USER%/%IMAGE_NAME%:latest"
        }
    }

    stage('Push to Docker Hub') {
        steps {

            withCredentials([
                usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USER',
                    passwordVariable: 'DOCKER_PASS'
                )
            ]) {

                bat """
                echo %DOCKER_PASS%| docker login -u %DOCKER_USER% --password-stdin
                docker push %DOCKER_HUB_USER%/%IMAGE_NAME%:%BUILD_NUMBER%
                docker push %DOCKER_HUB_USER%/%IMAGE_NAME%:latest
                """
            }
        }
    }
}

post {
    always {
        bat 'docker logout'
    }
}


}
