terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.93.0"
    }
  }
}
variable "azure_subscription_id" {}
variable "azure_client_id" {}
variable "azure_client_Secret" {}
variable "azure_tenant_id" {}

provider "azurerm" {
  features {}
}
#creating a resource group
resource "azurerm_resource_group" "resource_group_test" {
    name = "rg-terraform-created"
    location = "South India"
  }
#creating a storage acccount
resource "azurerm_storage_account" "storage_account" {
  name                     ="tstorage21250107"
  resource_group_name      = azurerm_resource_group.resource_group_test.name
  location                 = azurerm_resource_group.resource_group_test.location
  account_tier             = "Standard"
   account_replication_type = "LRS"
 }
