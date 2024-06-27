terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.109.0"
    }
  }
}

provider "azurerm" {
  features {

  }
}

module "monitoring" {
  source      = "../monitoring"
  environment = var.environment
}