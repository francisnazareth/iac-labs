variable "rg-name" {
  type = string
  default = "rg-temp"
}

variable "rg-location" {
  type = string
  default = "westeurope"
  description = "resource group location"
}

variable "hub-vnet-address-space"{
  type=string
}

variable "bastion-subnet-address-space" {
}
