resource "azurerm_resource_group" "net" {
  name     = "net-e-rgp"
  location = "eastus2"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet-e-01" {
  name                = "vnet-e-01"
  resource_group_name = azurerm_resource_group.net.name
  location            = azurerm_resource_group.net.location
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "subnet-01" {
  name                 = "subnet-01"
  resource_group_name  = azurerm_resource_group.net.name
  virtual_network_name = azurerm_virtual_network.vnet-e-01.name
  address_prefixes     = ["10.0.1.0/24"]

  delegation {
    name = "delegation"

    service_delegation {
      name    = "Microsoft.ContainerInstance/containerGroups"
      actions = ["Microsoft.Network/virtualNetworks/subnets/join/action", "Microsoft.Network/virtualNetworks/subnets/prepareNetworkPolicies/action"]
    }
  }
}