node('master') {
    stage ( 'git checkout' ) {
       git 'https://github.com/agu149/project1.git' 
    }
    
     stage ('maven') {
     def dockerImage = 'maven:slim'
      docker.image(dockerImage).inside("-v ${WORKSPACE}:/root ") {
      sh " 'mvn' -Dmaven.test.failure.ignore clean install "
         }
	} 
      stage (' junit'){
      junit '**/target/surefire-reports/TEST-*.xml'
      archive 'target/*.jar'
   }
}
