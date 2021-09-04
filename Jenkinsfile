pipeline {

  agent any

   environment {
    SVC_ACCOUNT_KEY = credentials('terraform-auth')
  }

  stages {

    stage('Checkout') {
      steps {
        checkout scm
        sh 'mkdir -p creds' 
        sh 'echo $SVC_ACCOUNT_KEY | base64 -d > ./creds/serviceaccount.json'
      }
    }
  

    stage('TF Init') {
      steps {
          sh 'terraform init'
      }      
    }

    stage('TF Plan') {
      steps {
        
          sh 'terraform plan -out myplan'
       
      }      
    }

    stage('TF Apply') {
      steps {
       
          sh 'terraform apply -input=false myplan'
        
      }
    }

  } 

}
