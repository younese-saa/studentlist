node {

    checkout scm
    
    docker.withRegistry('https://registry.hub.docker.com','dockerhub'){
      
        def customImage = docker.build("227945/my")
        
        /* Push the container to the costum Registry */
        customImage.push()  
    }
    stage('Ansible Remote Access: AppServer'){
        sh 'ssh centos@192.168.1.131'
    }
    stage('Stop Old container'){
        sh 'docker stop list-students'
    }
    stage('Remove Old container'){
        sh 'docker rm list-students'
    }
    stage('Run Container'){
        sh 'docker run -p 5000:5000 -d --name list-students 227945/my:latest'
    }
    stage('test'){
        sh 'curl -u toto:python -X GET http://317912a0.ngrok.io:5000/pozos/api/v1.0/get_student_ages'
    }
}
