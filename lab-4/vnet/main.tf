resource "azurerm_virtual_network" "hub-vnet" {
  name                = "vnet-hub-${var.rg-location}-01"
  location            = var.rg-location
  resource_group_name = var.rg-name
  address_space       = [var.hub-vnet-address-space]

  tags = {
    environment = "Hub"
  }
}

resource "azurerm_subnet" "hub-bastion-subnet" {
  name                 = "AzureBastionSubnet"
  resource_group_name  = var.rg-name
  virtual_network_name = azurerm_virtual_network.hub-vnet.name
  address_prefixes     = [var.bastion-subnet-address-space]
}
