terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.93.0"
    }
  }
}
provider "azurerm" {
  features {}
  tenant_id: 4e206028-4f53-4bca-8da1-7aa67e5e5fb6
}

resource "azurerm_resource_group" "resource_group_te" {
    name     = "rg-terraform-testt"
    location = "South India"
}

resource "azurerm_storage_account" "storage_account" {
    name                     = "tstorage212528"
    resource_group_name      = azurerm_resource_group.resource_group_te.name
    location                 = azurerm_resource_group.resource_group_te.location
    account_tier             = "Standard"
    account_replication_type = "LRS"
}
