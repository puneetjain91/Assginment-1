 # Output values for the project# outputs.tf: Defines output values for the project

# Resource Group Output
output "resource_group_name" {
  description = "The name of the Azure Resource Group"
  value       = module.resource_group.resource_group_name
}

# Virtual Network Output
output "virtual_network_name" {
  description = "The name of the Virtual Network"
  value       = module.vnet.virtual_network_name
}

# AKS Cluster Output
output "aks_cluster_name" {
  description = "The name of the AKS cluster"
  value       = module.aks.aks_cluster_name
}

# Azure Key Vault Output
output "key_vault_name" {
  description = "The name of the Azure Key Vault"
  value       = module.key_vault.key_vault_name
}

# Storage Account Output
output "storage_account_name" {
  description = "The name of the Azure Storage Account for Terraform state"
  value       = var.storage_account_name
}
