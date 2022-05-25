resource "azurerm_resource_group" "rg1" {
  name     = "RG-01"
  location = "Eastus2"

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account" "sa1" {
  name                     = "acstorage54855"
  resource_group_name      = "RG-01"
  location                 = "Eastus2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "staging"
  }
}