resource "keycloak_realm" "example" {
  lifecycle {
    prevent_destroy = true
    ignore_changes = [
      attributes["created_at"]
    ]
  }

  realm   = "example"
  enabled = true

  attributes = {
    created_at = timestamp()
    team       = "core"
  }
}
