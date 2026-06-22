locals {
  users = {
    "admin"  = ["Admin", "Admin"]
    "ondrej" = ["Ondrej", "Sika"]
    "dela"   = ["Dela", "Dela"]
    "klara"  = ["Klara", "Alis"]
  }
}

resource "slu_random_password" "password" {
  for_each = local.users
}

resource "keycloak_user" "user" {
  for_each = local.users

  realm_id = keycloak_realm.example.realm

  username = each.key
  enabled  = true

  email          = "${each.key}@sikademo.com"
  email_verified = true
  first_name     = each.value[0]
  last_name      = each.value[1]

  initial_password {
    value     = slu_random_password.password[each.key].result
    temporary = false
  }
}

