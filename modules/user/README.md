## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_keycloak"></a> [keycloak](#requirement\_keycloak) | 5.8.0 |
| <a name="requirement_slu"></a> [slu](#requirement\_slu) | 0.4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_keycloak"></a> [keycloak](#provider\_keycloak) | 5.8.0 |
| <a name="provider_slu"></a> [slu](#provider\_slu) | 0.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [keycloak_user.this](https://registry.terraform.io/providers/keycloak/keycloak/5.8.0/docs/resources/user) | resource |
| [slu_random_password.this](https://registry.terraform.io/providers/sikalabsx/slu/0.4.0/docs/resources/random_password) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_first_name"></a> [first\_name](#input\_first\_name) | n/a | `string` | n/a | yes |
| <a name="input_last_name"></a> [last\_name](#input\_last\_name) | n/a | `string` | n/a | yes |
| <a name="input_realm_id"></a> [realm\_id](#input\_realm\_id) | n/a | `string` | n/a | yes |
| <a name="input_username"></a> [username](#input\_username) | Company username and also email on @sikademo.com | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | n/a |
| <a name="output_initial_password"></a> [initial\_password](#output\_initial\_password) | n/a |
| <a name="output_username"></a> [username](#output\_username) | n/a |
