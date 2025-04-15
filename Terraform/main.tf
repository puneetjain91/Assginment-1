module "resource_group" {
  source    = "./modules/resource_group"
  name      = "my-resource-group"
  location  = "eastus"
}

module "azure_policy" {
  source             = "./modules/azure_policy"
  resource_group_id  = module.resource_group.resource_group_name
}

module "vnet" {
  source              = "./modules/virtual_network"
  name                = "my-vnet"
  location            = "eastus"
  resource_group_name = module.resource_group.resource_group_name
  address_space       = ["10.0.0.0/16"]
  aks_subnet_prefix   = ["10.0.1.0/24"]
}

module "aks" {
  source              = "./modules/aks"
  name                = "my-aks-cluster"
  location            = "eastus"
  resource_group_name = module.resource_group.resource_group_name
  dns_prefix          = "myaks"
  node_count          = 2
}

module "key_vault" {
  source              = "./modules/key_vault"
  name                = "my-keyvault"
  location            = "eastus"
  resource_group_name = module.resource_group.resource_group_name
  tenant_id           = "YOUR_TENANT_ID"
}
