variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "virtual_network_name" {
  type = string
}

variable "address_space" {
  type = list(string)
}

variable "subnet_name" {
  type = string
}

variable "address_prefixes" {
  type = list(string)
}



# Variable for Virtual Machine
variable "virtual_machine_name" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "admin_password" {
  type      = string
  sensitive = true
}

variable "subnet_id" {
  type = string
}

# Storage Account

variable "storage_account_name" {
  type = string
}

variable "container_name" {
  type = string
}

# App Service
variable "app_service_name" {
  type = string
}

variable "app_service_plan_sku" {
  type    = string
  default = "F1"
}