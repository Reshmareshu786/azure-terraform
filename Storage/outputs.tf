output "storage_account_name"{
    value = azurerm_storage_account.stg.name
}

output "container_name"{
  value = azurerm_storage_container.container.name
}