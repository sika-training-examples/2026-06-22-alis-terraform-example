locals {
  users3 = {
    "aaa" = ["AAA", "AAA"]
    "bbb" = ["BBB", "BBB"]
  }
}

module "users" {
  for_each = local.users3

  source = "./modules/user"

  realm_id   = keycloak_realm.example.realm
  username   = each.key
  first_name = each.value[0]
  last_name  = each.value[1]
}

output "users" {
  value     = module.users
  sensitive = true
}
