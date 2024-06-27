resource "azurerm_container_app_environment" "main" {
  name                       = "cae-${local.suffix}"
  location                   = azurerm_resource_group.main.location
  resource_group_name        = azurerm_resource_group.main.name
  log_analytics_workspace_id = module.monitoring.log_workspace_id
}