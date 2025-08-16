terraform {
  backend "azurerm" {
    resource_group_name  = "app-rg"
    storage_account_name = "appstg1"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}
