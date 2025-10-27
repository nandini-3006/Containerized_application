pipeline {
    agent any  
   
    tools {
        jdk 'jdk'
        maven 'maven'
    }
    
   stages {
        stage('Check Tools') {
            steps {
                echo "Testing Jenkins tool setup..."
                sh 'java -version'
                sh 'mvn -v'
            }
        }

        stage('Build') {
            steps {
                echo "Building Spring Boot project..."
                sh 'mvn clean package -DskipTests'
            }
        }

        stage('Success') {
            steps {
                echo "✅ Build completed successfully!"
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished!'
        }
    }
}

   
