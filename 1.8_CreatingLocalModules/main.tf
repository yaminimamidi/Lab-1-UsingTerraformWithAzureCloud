module "Storage1" {
  source               = "./modules/StorageAccount"
  resource_group_name  = "RG-STORAGE-01"
  storage_account_name = "acteststorage001"
  location             = "EastUs2"
}

module "Storage2" {
  source               = "./modules/StorageAccount"
  resource_group_name  = "RG-STORAGE-02"
  storage_account_name = "acteststorage002"
  location             = "EastUs2"
}

resource "azurerm_storage_container" "content" {
  name                  = "content"
  storage_account_name  = module.Storage2.storage_account_name
  container_access_type = "private"

  depends_on = [
    module.Storage2
  ]
}

output "Storage2" {
  value = module.Storage2
}
