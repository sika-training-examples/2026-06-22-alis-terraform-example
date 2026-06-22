module "foo_user" {
  source = "./modules/user"

  realm_id   = keycloak_realm.example.realm
  username   = "foo"
  first_name = "Foo"
  last_name  = "Demo"
}

output "foo_user" {
  value     = module.foo_user
  sensitive = true
}

module "bar_user" {
  source = "./modules/user"

  realm_id   = keycloak_realm.example.realm
  username   = "bar"
  first_name = "Bar"
  last_name  = "Demo"
}

output "bar_user" {
  value     = module.bar_user
  sensitive = true
}
