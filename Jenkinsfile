node
{
    def app
    stage('Clone')
    {
        checkout scm
    }
    stage('Build image')
    {
        app = docker.build('wan/nginx')
    }
    stage('Test image')
    {
        docker.image('wan/nginx').withRun('-p 80:80')
        {
            c ->
            sh 'docker ps'
            sh 'curl localhost'
        }
    }
}
