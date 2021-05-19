provider "google" {
  project     = "jenkins-314106"
  #credentials = "/home/bollabathini/tf-cicd/jenkins-project.json"
}
provider "google" {
  version = "~> 3.3.0"
}

provider "null" {
  version = "~> 2.1"
}
/*
terraform {
  backend "gcs" {
    bucket      = "tf-state-blackmercury-new"
    prefix      = "vpc-network/tf.state"
    credentials = "/home/bollabathini/google-walle.json"
  }
}*/
