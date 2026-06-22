resource "keycloak_realm" "example" {
  lifecycle {
    prevent_destroy = true
  }

  realm   = "example"
  enabled = true
}
