resource "azurerm_resource_group" "rg01" {
  name     = "Test-RG-AC-01"
  location = "eastus2"

  tags = {
    environment = "staging"
    foo = "bar"
  }
}

resource "azurerm_storage_account" "sa001" {
  name                     = "acstorage001"
  resource_group_name      = azurerm_resource_group.rg01.name
  location                 = azurerm_resource_group.rg01.location
  account_tier             = "Standard"
  account_replication_type = "LRS"      # Cheapest option - Use this

  tags = {
    environment = "staging"
    foo = "bar"
  }
}