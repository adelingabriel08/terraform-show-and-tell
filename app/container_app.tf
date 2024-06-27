resource "azurerm_container_app" "main" {
  name                         = "aca-nginx"
  container_app_environment_id = azurerm_container_app_environment.main.id
  resource_group_name          = azurerm_resource_group.main.name
  revision_mode                = "Single"

  template {
    container {
      name   = "nginx"
      image  = "nginx:latest"
      cpu    = 0.5
      memory = "1Gi"
    }
  }

  ingress {
    external_enabled = true
    target_port = 80

    traffic_weight {
      percentage = 100
      latest_revision = true
    }
  }
}