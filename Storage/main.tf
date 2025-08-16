resource "azurerm_storage_account" "stg" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  network_rules {
    default_action             = "Allow"
    #p_rules                   = ["100.0.0.1"]
    virtual_network_subnet_ids = [var.subnet_id]
  }

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_container" "container" {
  name                 = var.container_name
  storage_account_name = azurerm_storage_account.stg.name  
  container_access_type = "private"
}
