resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_storage_account" "example" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = var.storage_account_tier
  account_replication_type = var.storage_account_replication_type
}

resource "azurerm_app_service_plan" "example" {
  name                = var.app_service_plan_name
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku {
    tier = "Standard"
    size = "S1"
  }
}

resource "azurerm_linux_function_app" "example" {
  name                      = var.function_app_name
  location                  = azurerm_resource_group.example.location
  resource_group_name       = azurerm_resource_group.example.name
  app_service_plan_id       = azurerm_app_service_plan.example.id
  storage_account_name      = azurerm_storage_account.example.name
  os_type                   = "Linux"
  runtime_stack             = "dotnet"
  version                   = "~3"
  app_settings {
    "FUNCTION_APP_EDIT_MODE" = "readOnly"
  }
}

resource "azurerm_function_app_function" "example" {
  name              = var.function_name
  resource_group_name = azurerm_resource_group.example.name
  function_app_name = azurerm_linux_function_app.example.name
  storage_account_name = azurerm_storage_account.example.name
  os_type = "Linux"
  app_settings {
    "FUNCTIONS_WORKER_RUNTIME" = "dotnet"
  }
}
