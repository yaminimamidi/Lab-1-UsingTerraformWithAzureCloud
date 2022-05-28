variable "sa1_name" {
  default = "acstorage111"
}

locals {
  location = "Eastus2"
  test = true
}

resource "azurerm_resource_group" "rg1" {
  name     = "RG-01"
  location = local.location

  tags = {
    environment = "staging"
  }
}

resource "azurerm_storage_account" "sa1" {
  name                     = var.sa1_name
  resource_group_name      = azurerm_resource_group.rg1.name
  location                 = azurerm_resource_group.rg1.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = azurerm_resource_group.rg1.tags
}

data "azurerm_resource_group" "RG-TEST-01" {
  name = "RG-TEST-01"
}

resource "azurerm_storage_account" "sa2" {
  name                     = "acstorage222"
  resource_group_name      = data.azurerm_resource_group.RG-TEST-01.name
  location                 = data.azurerm_resource_group.RG-TEST-01.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = data.azurerm_resource_group.RG-TEST-01.tags
}

output "sa2_id" {
  value = azurerm_storage_account.sa2.id
}