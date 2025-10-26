pipeline {
    agent any  

    stages {
        stage('Step 1: Checkout') {
            steps {
                echo 'Step 1: Checking out the code...'
            }
        }

        stage('Step 2: Build') {
            steps {
                echo 'Step 2: Building the project...'
            }
        }

        stage('Step 3: Test') {
            steps {
                echo 'Step 3: Running tests...'
            }
        }

        stage('Step 4: Deploy') {
            steps {
                echo 'Step 4: Deploying the project...'
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}
