pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo "Running Build"
                // nodejs(nodeJSInstallationName: 'Node 6.x', configId: '<config-file-provider-id>')
                sh '''
                    npm install
                    npm version
                '''
            }
        }
        stage('Test'){
            steps {
                echo "Running test"
            }
        }
        stage('Build Docker Image') {
            steps {
                when {
                    expression {
                        BRANCH_NAME == 'main'
                    }
                }
                sh'''

                      echo "Build docker image"
                    //   docker build -t sca-capstone .
                      echo "Tag built docker image"
                    //   docker tag sca-capstone:latest gcr.io/sca-capstone-1/sca-capstone-image:latest
                      echo "Push Image to Google Container Registry"
                    //   docker push gcr.io/sca-capstone-1/sca-capstone-image:latest
                  '''
            }

        }
        stage('Deploy') {
            steps {
                echo "Deploying to GKE Cluster"
                echo "Build docker image"
                // sh docker build -t sca-capstone ./Dockerfile
                // sh docker tag sca-capstone gcr.io/sca-capstone-1/sca-capstone
                // sh docker push gcr.io/sca-capstone-1/sca-capstone
                // echo "push image to gcr"
            }
        }
    }
}