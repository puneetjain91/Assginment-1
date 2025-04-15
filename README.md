# Assginment-1

### Creating Part 1 and Part2  Terraform Directory Structure with AKS modules 

Terraform/
├── main.tf                # Entry point for the Terraform code
├── variables.tf           # Define input variables
├── outputs.tf             # Define output values
├── backend.tf             # Configure remote state
├── modules/
│   ├── resource_group/
│   ├── azure_policy/
│   ├── virtual_network/
│   ├── aks/
│   ├── key_vault/
│   ├── storage_account/
