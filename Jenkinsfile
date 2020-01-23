node {
   def registryProjet='arch1/app'
   def IMAGE="${registryProjet}:version-${env.BUILD_ID}"
    stage('Clone') {
          checkout scm
    }
    def img = stage('Build') {
          docker.build("$IMAGE",  '.')
    }

   
    stage('Push') {
          docker.withRegistry('', 'docker-hub-credentials') {
              img.push 'latest'
              img.push()
          }
    }
}

