pipeline{
    agent any
    stages{
         stage("GitHub checkout") {
            steps {
                script {
 
                    git branch: 'main', url: 'https://github.com/preyeapere/Project_Exam-Terraform-ansible.git' 
                }
            }
        }
        stage("Build docker image"){
            steps{
                sh 'printenv'
                sh 'git version'
                sh 'docker build . -t preyeapere/imag5.0'
            }
        }
         stage("push image to DockerHub"){
            steps{

               script {
                  
                 withCredentials([string(credentialsId: 'dockerID', variable: 'dockerID')]) {
                    sh 'docker login -u preyeapere -p ${dockerID}'
            }
              sh 'docker push preyeapere/imag5.0:latest'
            }
        }
    }
    }
}
