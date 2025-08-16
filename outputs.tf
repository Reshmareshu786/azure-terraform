# Resource Group
output "resource_group_name" {
  value = module.resource_group.resource_group_name
}
output "resource_group_id" {
  value = module.resource_group.resource_group_id
}

output "resource_group_location" {
  value = module.resource_group.resource_group_location
}

# Virtual Network 
output "virtual_network_name" {
  value = module.virtual_network.virtual_network_name
}


output "virtual_network_id" {
  value = module.virtual_network.virtual_network_id
}


output "subnet_id" {
  value = module.virtual_network.subnet_id
}

# Virtual Machine Outputs

output "virtual_machine_name" {
  value = module.virtual_machine.virtual_machine_name
}

output "virtual_machine_id" {
  value = module.virtual_machine.virtual_machine_id
}

# Storage Account 
output "storage_account_name" {
  value = module.storage_account.storage_account_name
}

output "container_name" {
  value = module.storage_account.container_name

}

# App Service
output "app_service_name" {
  value = module.app_service.app_service_name
}

output "app_service_id" {
  value = module.app_service.app_service_id
}