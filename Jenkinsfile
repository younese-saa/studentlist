node {

    checkout scm
    
    docker.withRegistry('https://registry.hub.docker.com','dockerhub'){
      
        def customImage = docker.build("younese-saa/studentlist")
        
        /* Push the container to the costum Registry */
        customImage.push()
    
    }
}
