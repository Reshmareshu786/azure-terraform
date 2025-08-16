output "virtual_network_name" {
  value = azurerm_virtual_network.app-vn.name
}

output "virtual_network_id" {
  value = azurerm_virtual_network.app-vn.id
}

output "subnet_id" {
  value = azurerm_subnet.app-subnet.id
}