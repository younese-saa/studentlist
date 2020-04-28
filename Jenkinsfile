node {

    checkout scm
    
    docker.withRegistry('https://registry.hub.docker.com','dockerhub'){
      
        def customImage = docker.build("227945/my")
        
        /* Push the container to the costum Registry */
        customImage.push()
    
    }
}
