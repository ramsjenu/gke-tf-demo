terraform {
     backend "gcs" {
       bucket = "vrams-project-tfstate"
       credentials = "serviceaccount.json"
     }
}