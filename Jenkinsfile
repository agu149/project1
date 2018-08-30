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
	}
}