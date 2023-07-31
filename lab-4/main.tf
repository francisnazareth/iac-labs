# We strongly recommend using the required_providers block to set the
# Azure Provider source and version being used

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {
  }
}

# Create a resource group
module "hub-rg" {
    source         = "./rg"
    rg-name        = var.rg-name
    rg-location    = var.rg-location
}

module "vnet" {
  source = "./vnet"
  rg-name        = module.hub-rg.rg-name
  rg-location    = module.hub-rg.rg-location
  hub-vnet-address-space = var.hub-vnet-address-space
  bastion-subnet-address-space = var.bastion-subnet-address-space
  depends_on            = [module.hub-rg]
}
