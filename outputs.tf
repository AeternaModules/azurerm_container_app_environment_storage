output "container_app_environment_storages_access_key" {
  description = "Map of access_key values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.access_key }
  sensitive   = true
}
output "container_app_environment_storages_access_mode" {
  description = "Map of access_mode values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.access_mode }
}
output "container_app_environment_storages_account_name" {
  description = "Map of account_name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.account_name }
}
output "container_app_environment_storages_container_app_environment_id" {
  description = "Map of container_app_environment_id values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.container_app_environment_id }
}
output "container_app_environment_storages_name" {
  description = "Map of name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.name }
}
output "container_app_environment_storages_nfs_server_url" {
  description = "Map of nfs_server_url values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.nfs_server_url }
}
output "container_app_environment_storages_share_name" {
  description = "Map of share_name values across all container_app_environment_storages, keyed the same as var.container_app_environment_storages"
  value       = { for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : k => v.share_name }
}

