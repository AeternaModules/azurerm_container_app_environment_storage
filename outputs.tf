output "container_app_environment_storages" {
  description = "All container_app_environment_storage resources"
  value       = azurerm_container_app_environment_storage.container_app_environment_storages
  sensitive   = true
}
output "container_app_environment_storages_access_key" {
  description = "List of access_key values across all container_app_environment_storages"
  value       = [for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : v.access_key]
  sensitive   = true
}
output "container_app_environment_storages_access_mode" {
  description = "List of access_mode values across all container_app_environment_storages"
  value       = [for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : v.access_mode]
}
output "container_app_environment_storages_account_name" {
  description = "List of account_name values across all container_app_environment_storages"
  value       = [for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : v.account_name]
}
output "container_app_environment_storages_container_app_environment_id" {
  description = "List of container_app_environment_id values across all container_app_environment_storages"
  value       = [for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : v.container_app_environment_id]
}
output "container_app_environment_storages_name" {
  description = "List of name values across all container_app_environment_storages"
  value       = [for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : v.name]
}
output "container_app_environment_storages_nfs_server_url" {
  description = "List of nfs_server_url values across all container_app_environment_storages"
  value       = [for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : v.nfs_server_url]
}
output "container_app_environment_storages_share_name" {
  description = "List of share_name values across all container_app_environment_storages"
  value       = [for k, v in azurerm_container_app_environment_storage.container_app_environment_storages : v.share_name]
}

