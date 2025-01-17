node {
    def app

    stage('Clone') {
        checkout scm
    }

    stage('Build image') {
        app = docker.build("xavki/nginx")
    }

    stage('Run image') {
        app.withRun('-p 80:80') { c ->
            sh 'docker ps'

            // Vérification si le conteneur répond correctement
            try {
                sh 'curl -f localhost'
                echo 'Container is running and responding to HTTP requests.'
            } catch (Exception e) {
                echo 'Failed to connect to the container. Please check logs or configuration.'
                error 'Pipeline failed due to unreachable container.'
            }
        }
    }
}
