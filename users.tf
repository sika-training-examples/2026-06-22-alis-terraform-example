resource "keycloak_user" "admin" {
  realm_id = keycloak_realm.example.realm

  username = "admin"
  enabled  = true

  email          = "admin@sikademo.com"
  email_verified = true
  first_name     = "Admin"
  last_name      = "Admin"

  initial_password {
    value     = "a"
    temporary = false
  }
}

resource "keycloak_user" "ondrej" {
  realm_id = keycloak_realm.example.realm

  username = "ondrej"
  enabled  = true

  email          = "ondrej@sikademo.com"
  email_verified = true
  first_name     = "Ondrej"
  last_name      = "Sika"

  initial_password {
    value     = "a"
    temporary = false
  }
}
