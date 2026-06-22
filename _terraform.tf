terraform {
  backend "s3" {
    bucket = "training-alis-tf-states"
    key    = "alis-example.tfstate"
    region = "eu-central-1"
  }
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.8.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.9.0"
    }
    slu = {
      source  = "sikalabsx/slu"
      version = "0.4.0"
    }
  }
}

variable "keycloak_password" {}

provider "keycloak" {
  url       = "https://keycloak.ondrejsika.cz"
  client_id = "admin-cli"
  username  = "admin"
  password  = var.keycloak_password
}
