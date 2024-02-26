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
 azure_subscription_id
 azure_client_id
 azure_client_Secret
 azure_tenant_id = secrets.azure_tenant_id
}
#creating a resource group
resource "azurerm_resource_group" "resource_group_test" {
    name = "rg-terraform-de"
    location = "South India"
  }
#creating a storage acccount
resource "azurerm_storage_account" "storage_account" {
  name                     ="tstorage01070809"
  resource_group_name      = azurerm_resource_group.resource_group_test.name
  location                 = azurerm_resource_group.resource_group_test.location
  account_tier             = "Standard"
   account_replication_type = "LRS"
 }
