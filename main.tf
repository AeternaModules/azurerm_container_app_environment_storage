data "azurerm_key_vault_secret" "access_key" {
  for_each     = { for k, v in var.container_app_environment_storages : k => v if v.access_key_key_vault_id != null && v.access_key_key_vault_secret_name != null }
  name         = each.value.access_key_key_vault_secret_name
  key_vault_id = each.value.access_key_key_vault_id
}
resource "azurerm_container_app_environment_storage" "container_app_environment_storages" {
  for_each = var.container_app_environment_storages

  access_mode                  = each.value.access_mode
  container_app_environment_id = each.value.container_app_environment_id
  name                         = each.value.name
  share_name                   = each.value.share_name
  access_key                   = each.value.access_key != null ? each.value.access_key : try(data.azurerm_key_vault_secret.access_key[each.key].value, null)
  account_name                 = each.value.account_name
  nfs_server_url               = each.value.nfs_server_url
}

