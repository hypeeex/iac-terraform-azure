variable "resource_group_name" {
  type    = string
  default = "my-resource-group"
}

variable "resource_group_location" {
  type    = string
  default = "westeurope"
}

variable "storage_account_name" {
  type    = string
  default = "my-storage-account"
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type    = string
  default = "LRS"
}

variable "app_service_plan_name" {
  type    = string
  default = "my-app-service-plan"
}

variable "function_app_name" {
  type    = string
  default = "my-function-app"
}

variable "function_name" {
  type    = string
  default = "my-function"
}
