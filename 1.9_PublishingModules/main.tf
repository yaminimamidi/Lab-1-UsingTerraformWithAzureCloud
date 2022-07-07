module "acstoragetest" {
  source               = "mmcelreath/acstoragetest/azurerm"
  version              = "0.0.3"
  resource_group_name  = "RG-STORAGE-01"
  storage_account_name = "acstoragetest01"
  location             = "eastus2"
}