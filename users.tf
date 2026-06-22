resource "random_password" "admin" {
  length  = 16
  special = false
}

resource "keycloak_user" "admin" {
  realm_id = keycloak_realm.example.realm

  username = "admin"
  enabled  = true

  email          = "admin@sikademo.com"
  email_verified = true
  first_name     = "Admin"
  last_name      = "Admin"

  initial_password {
    value     = random_password.admin.result
    temporary = false
  }
}

resource "slu_random_password" "ondrej" {}

resource "keycloak_user" "ondrej" {
  realm_id = keycloak_realm.example.realm

  username = "ondrej"
  enabled  = true

  email          = "ondrej@sikademo.com"
  email_verified = true
  first_name     = "Ondrej"
  last_name      = "Sika"

  initial_password {
    value     = slu_random_password.ondrej.result
    temporary = false
  }
}

resource "slu_random_password" "dela" {}

resource "keycloak_user" "dela" {
  realm_id = keycloak_realm.example.realm

  username = "dela"
  enabled  = true

  email          = "dela@sikademo.com"
  email_verified = true
  first_name     = "Dela"
  last_name      = "Dela"

  initial_password {
    value     = slu_random_password.dela.result
    temporary = false
  }
}

output "initial_password_admin" {
  value     = random_password.admin.result
  sensitive = true
}

output "initial_password_ondrej" {
  value     = slu_random_password.ondrej.result
  sensitive = true
}

output "initial_password_dela" {
  value     = slu_random_password.dela.result
  sensitive = true
}
