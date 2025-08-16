resource "azurerm_app_service_plan" "plan" {
  name                = "${var.app_service_name}-plan"
  location            = var.location
  resource_group_name = var.resource_group_name
  sku {
    tier = "Free"
    size = var.app_service_plan_sku
  }
}

resource "azurerm_app_service" "app" {
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.plan.id
}