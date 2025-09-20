pipeline{
    agent { label 'AGENT-1' }
    environment{
        PROJECT='expense'
        component='backend'
        appVersion=''
    }
    options{
        ansiColor('xterm') 
    }
    stages{
        stage('Terraform Init'){
            steps{
                dir('Infrastructure/security_group')
                script{
                    sh """
                     
                     terraform init -reconfigure
                    """
                }
            }
        }
        
    }
    post{
        success{
            script{
                def timestamp= new Date()
                echo "Deployment completed at ${timestamp}"
            }
            deleteDir()
        }
        failure{
            script{
                def timestamp = new Date()
                echo  "Deployment is not completed at ${timestamp}"
            }
        }
    }
}
