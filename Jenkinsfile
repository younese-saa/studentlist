node {

    checkout scm
    
    docker.withRegistry('https://registry.hub.docker.com','dockerhub'){
      
        def costumImage = docker.build("younese-saa/studentlist/liststd")
        
        /* Push the container to the costum Registry */
        customImage.push()
    
    }
}