variable "name" {
  type        = string
  description = "Name of the Virtual Network"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the Virtual Network"
}

variable "aks_subnet_prefix" {
  type        = list(string)
  description = "Address prefixes for the AKS subnet"
}
