resource "azurerm_resource_group" "rg01" {
  name     = "Test-RG-AC-01"
  location = "eastus2"

  tags = {
    environment = "staging"
    foo = "bar"
  }
}

resource "azurerm_storage_account" "sa001" {
  name                     = "acstorage89z"
  resource_group_name      = "Test-RG-AC-01"
  location                 = "eastus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"      # Cheapest option - Use this

  tags = {
    environment = "staging"
    test = "true"
  }
}