terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.8.0"
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
