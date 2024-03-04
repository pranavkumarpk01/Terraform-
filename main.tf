
#creating a resource group
resource "azurerm_resource_group" "resource_group_te" {
    name = "rg-terraform-testt"
    location = "South India"
  }
#creating a storage acccount
resource "azurerm_storage_account" "storage_account" {
  name                     ="tstorage212528"
  resource_group_name      = azurerm_resource_group.resource_group_te.name
  location                 = azurerm_resource_group.resource_group_te.location
  account_tier             = "Standard"
   account_replication_type = "LRS"
 }
