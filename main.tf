variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

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
