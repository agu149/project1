pipeline {
	agent any

	stages{

		stage('SCM'){

			steps{
				deleteDir()
				checkout scm
				script{
                	PROJ_NAME = sh(returnStdout: true, script: "echo ${env.JOB_NAME} | awk -F/ '{print \$1}'").replaceAll('\\s', '')
            	}
			}
		}
		
		stage('Build & Push Docker Image'){
			steps {
                echo "----------Building LATEST docker image----------"

                    sh "docker build -t ${PROJ_NAME}:${env.BUILD_NUMBER} ."
                    sh "docker image tag ${PROJ_NAME}:${env.BUILD_NUMBER} ${PROJ_NAME}:latest"
            }
		}
	}
}