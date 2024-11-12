pipeline {
    agent any
    stages {
		stage('	Checkout external proj') {
			steps {
				checkout scmGit(branches: [[name: '*/ci']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/julianjupiter/java-web-app-with-embedded-tomcat.git']])
			}
		}
        stage('Build') { 
            steps {
               bat '''cd java-web-app-with-embedded-tomcat
			   mvn clean ${	}'''
            }
        }
        stage('Deploy') { 
            steps {
                bat 'java -jar ./target/java-web-app-with-embedded-tomcat-1.0.0-SNAPSHOT.jar'
            }
        }
    }
	post { 
        always { 
            cleanWs()
        }
		
    }
}
