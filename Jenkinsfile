pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Running Build"
                sh npm install
            }
        }
        stage('Test'){
            steps {
                echo "Running test"
            }
        }
        stage('Deploy') {
            steps {
                echo "Deploying to GKE Cluster"
                echo "Build docker image"
                // sh docker build -t sca-capstone ./Dockerfile
                // sh docker tag sca-capstone gcr.io/sca-capstone-1/sca-capstone
                // sh docker push gcr.io/sca-capstone-1/sca-capstone
                echo "push image to gcr"
            }
        }
    }
}