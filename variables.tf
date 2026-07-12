variable "container_app_environment_storages" {
  description = <<EOT
Map of container_app_environment_storages, attributes below
Required:
    - access_mode
    - container_app_environment_id
    - name
    - share_name
Optional:
    - access_key
    - access_key_key_vault_id (alternative to access_key - read from Key Vault instead)
    - access_key_key_vault_secret_name (alternative to access_key - read from Key Vault instead)
    - account_name
    - nfs_server_url
EOT

  type = map(object({
    access_mode                      = string
    container_app_environment_id     = string
    name                             = string
    share_name                       = string
    access_key                       = optional(string)
    access_key_key_vault_id          = optional(string)
    access_key_key_vault_secret_name = optional(string)
    account_name                     = optional(string)
    nfs_server_url                   = optional(string)
  }))
}

