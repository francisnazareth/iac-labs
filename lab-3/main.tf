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
