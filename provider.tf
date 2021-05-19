provider "google" {
  project     = "jenkins-314106"
  #credentials = "/home/bollabathini/tf-cicd/jenkins-project.json"
}
/*
terraform {
  backend "gcs" {
    bucket      = "tf-state-blackmercury-new"
    prefix      = "vpc-network/tf.state"
    credentials = "/home/bollabathini/google-walle.json"
  }
}*/
