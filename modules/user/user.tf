terraform {
  required_providers {
    keycloak = {
      source  = "keycloak/keycloak"
      version = "5.8.0"
    }
    slu = {
      source  = "sikalabsx/slu"
      version = "0.4.0"
    }
  }
}

variable "realm_id" {
  type = string
}

variable "username" {
  type        = string
  description = "Company username and also email on @sikademo.com"
}

variable "first_name" {
  type = string
}

variable "last_name" {
  type = string
}

resource "slu_random_password" "this" {}

resource "keycloak_user" "this" {
  lifecycle {
    prevent_destroy = true
  }

  realm_id = var.realm_id

  username = var.username
  enabled  = true

  email          = "${var.username}@sikademo.com"
  email_verified = true
  first_name     = var.first_name
  last_name      = var.last_name

  initial_password {
    value     = slu_random_password.this.result
    temporary = true
  }
}

output "username" {
  value = var.username
}

output "id" {
  value = keycloak_user.this.id
}

output "initial_password" {
  value     = slu_random_password.this.result
  sensitive = true
}
