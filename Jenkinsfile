node{
   def app

     stage('Clone') {
	 checkout scm
     } 

     stage('Build image') {
	 app = docker.build("olegastrikeda/nginx") 
     } 
     
     stage('Run image') {
         docker.image('olegastrikeda/nginx').withRun('-p 83:80') { c ->

         sh 'docker ps'
         
         sh 'curl localhost'
     } 
     
     } 

} 
