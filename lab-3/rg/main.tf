resource "azurerm_resource_group" "hub-rg" {
  name     = var.rg-name
  location = var.rg-location
}
