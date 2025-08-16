terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}


# Modules
module "resource_group" {
  source              = "./ResourceGroup"
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "virtual_network" {
  source               = "./VirtualNetwork"
  virtual_network_name = var.virtual_network_name
  address_space        = var.address_space
  subnet_name          = var.subnet_name
  address_prefixes     = var.address_prefixes
  location             = module.resource_group.resource_group_location
  resource_group_name  = module.resource_group.resource_group_name
}


# Virtual Machine
module "virtual_machine" {
  source               = "./Compute/VirtualMachine"
  virtual_machine_name = var.virtual_machine_name
  admin_username       = var.admin_username
  admin_password       = var.admin_password
  location             = var.location
  resource_group_name  = module.resource_group.resource_group_name
  subnet_id            = module.virtual_network.subnet_id
}

# Storage Account 
module "storage_account" {
  source                  = "./Storage"
  storage_account_name    = var.storage_account_name
  resource_group_name     = module.resource_group.resource_group_name
  resource_group_location = module.resource_group.resource_group_location
  subnet_id               = module.virtual_network.subnet_id
  container_name          = var.container_name
}

# App Service
module "app_service" {
  source               = "./Compute/AppService"
  app_service_name     = var.app_service_name
  resource_group_name  = module.resource_group.resource_group_name
  location             = module.resource_group.resource_group_location
  app_service_plan_sku = var.app_service_plan_sku
}