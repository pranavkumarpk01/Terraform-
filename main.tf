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
  azure_subscription_id = "ddc9fb53-f594-49b0-8d21-a6517b633331"
  azure_client_id       = "4a7b5671-4339-425c-8e15-0b243244b138"
  azure_client_secret   = "BnC8Q~LE3CvlqWGYt.8x0IA4GzHW74jsNpPXLcFa"
  azure_tenant_id       = "4e206028-4f53-4bca-8da1-7aa67e5e5fb6"

}

#creating a resource group
resource "azurerm_resource_group" "resource_group_test" {
    name = "rg-terraform-dem"
    location = "South India"
  }
#creating a storage acccount
resource "azurerm_storage_account" "storage_account" {
  name                     ="tstorage010708"
  resource_group_name      = azurerm_resource_group.resource_group_test.name
  location                 = azurerm_resource_group.resource_group_test.location
  account_tier             = "Standard"
   account_replication_type = "LRS"
 }
