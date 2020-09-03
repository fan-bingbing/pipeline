pipeline {
    agent any
    stages {
        stage('Preparation') {
         steps {
            cleanWs()
            git credentialsId: 'GitHub', url: "https://github.com/fan-bingbing/pipeline.git"
         }
       }
        stage('Build') {
            steps {
                sh '''
                    ./jenkins-work/build/mvn.sh mvn -B -DskipTests clean package
                    ./jenkins-work/build/build.sh
                '''
            }
        }
        stage('Test') {
            steps {
              sh './jenkins-work/test/mvn.sh mvn test'

            }
        }
        stage('Push') {
            steps {
                sh './jenkins-work/push/push.sh'
            }
        }
    }
}
