output "container_app_environment_storages_id" {
  description = "Map of id values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.id if v.id != null && length(v.id) > 0 }
}
output "container_app_environment_storages_access_key" {
  description = "Map of access_key values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.access_key if v.access_key != null && length(v.access_key) > 0 }
  sensitive   = true
}
output "container_app_environment_storages_access_mode" {
  description = "Map of access_mode values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.access_mode if v.access_mode != null && length(v.access_mode) > 0 }
}
output "container_app_environment_storages_account_name" {
  description = "Map of account_name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.account_name if v.account_name != null && length(v.account_name) > 0 }
}
output "container_app_environment_storages_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.container_app_environment_id if v.container_app_environment_id != null && length(v.container_app_environment_id) > 0 }
}
output "container_app_environment_storages_name" {
  description = "Map of name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.name if v.name != null && length(v.name) > 0 }
}
output "container_app_environment_storages_nfs_server_url" {
  description = "Map of nfs_server_url values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.nfs_server_url if v.nfs_server_url != null && length(v.nfs_server_url) > 0 }
}
output "container_app_environment_storages_share_name" {
  description = "Map of share_name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.share_name if v.share_name != null && length(v.share_name) > 0 }
}

