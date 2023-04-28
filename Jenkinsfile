node('linux')
{
    stage('Clone_SourceCode'){
       git branch: 'main', url: 'https://github.com/babaknasrollahy/project3-quoet_microservice.git'

    }

    stage('Build_DockerImages'){
        sh 'echo babak13830 | sudo -S chmod +x builder.sh && ./builder.sh'
        stash "COPY"
        input "EveryThings is ok , would you like to continue??"
    }

}

node('master')
{
    unstash "COPY"
    stage('Deploy_App'){
        sh 'echo babak13830 | sudo -S -u babak "kubectl apply -f deployment.yaml" '
        sh 'echo babak13830 | sudo -S -u babak "kubectl apply -f service.yaml" '

    }
}
