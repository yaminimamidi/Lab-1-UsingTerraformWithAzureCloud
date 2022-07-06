module "Storage1" {
  source               = "./modules/StorageAccount"
  resource_group_name  = "RG-TEST-01"
  storage_account_name = "acteststorage01"
  location             = "EastUs2"
}

module "Storage2" {
  source               = "./modules/StorageAccount"
  resource_group_name  = "RG-TEST-02"
  storage_account_name = "acteststorage02"
  location             = "EastUs2"
}

















# resource "azurerm_resource_group" "rg" {
#   name     = "RG-01"
#   location = "eastus2"

#   tags = {
#     Demo = "true"
#   }
# }

# resource "azurerm_storage_account" "sa" {
#   name                     = "acteststorage01"
#   resource_group_name      = azurerm_resource_group.rg.name
#   location                 = azurerm_resource_group.rg.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"

#   tags = azurerm_resource_group.rg.tags
# }