pipeline {

  agent any

  environment {
    SVC_ACCOUNT_KEY = credentials('terraform-file-auth')
  }

  stages {

    stage('Checkout') {
      steps {
        checkout scm
        sh 'mkdir -p creds' 
        sh 'echo $SVC_ACCOUNT_KEY > ./creds/serviceaccount.json'
      }
    }

    stage('TF Init') {
      steps {
        container('terraform') {
          sh 'terraform init'
        }
      }      
    }

    stage('TF Plan') {
      steps {
        container('terraform') {
          sh 'terraform plan -out myplan'
        }
      }      
    }

    stage('TF Apply') {
      steps {
        container('terraform') {
          sh 'terraform apply -input=false myplan'
        }
      }
    }

  } 

}
