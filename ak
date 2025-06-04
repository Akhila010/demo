pipeline {
    agent any

    stages {
        stage('SCM') {
            steps {
git branch: 'main', url: 'git@github.com:Akhila010/maven-project.git'            }
        }
        stage('BUILD .WAR') {
            steps {
                bat '"D:\\apache-maven-3.9.9\\bin\\mvn" clean install'
        }
    }
}
}
