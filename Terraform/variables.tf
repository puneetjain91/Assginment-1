# Input variables for the project

# variables.tf: Defines input variables for the project

# Azure Region
variable "location" {
  description = "Azure region where resources will be deployed"
  type        = string
  default     = "eastus"
}

# Resource Group Name
variable "resource_group_name" {
  description = "Name of the Azure Resource Group"
  type        = string
  default     = "my-resource-group"
}

# Azure Kubernetes Service (AKS) Configurations
variable "aks_name" {
  description = "Name of the AKS cluster"
  type        = string
  default     = "my-aks-cluster"
}

variable "aks_node_count" {
  description = "Number of nodes in the AKS cluster"
  type        = number
  default     = 2
}

variable "aks_dns_prefix" {
  description = "DNS prefix for the AKS cluster"
  type        = string
  default     = "myaks"
}

# Virtual Network Configurations
variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
  default     = "my-vnet"
}

variable "vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "aks_subnet_prefix" {
  description = "Address prefixes for the AKS subnet"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

# Azure Key Vault Configurations
variable "key_vault_name" {
  description = "Name of the Azure Key Vault"
  type        = string
  default     = "my-keyvault"
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

# Storage Account for Terraform State Management
variable "storage_account_name" {
  description = "Name of the Azure Storage Account for Terraform state management"
  type        = string
  default     = "tfstatestorage"
}

variable "container_name" {
  description = "Name of the container in the storage account for Terraform state"
  type        = string
  default     = "tfstate"
}

variable "state_file_name" {
  description = "Name of the Terraform state file"
  type        = string
  default     = "terraform.tfstate"
}
