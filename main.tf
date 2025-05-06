resource "azurerm_resource_group" "rgdetails" {
  name     = var.resource_group_name
  location = var.location

  tags = {
    Creator = "suryansh_tilak@epam.com"
  }
}

resource "azurerm_storage_account" "sadetails" {
  name                     = var.storage_account_name
  resource_group_name      = azurerm_resource_group.rgdetails.name
  location                 = azurerm_resource_group.rgdetails.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    Creator = "suryansh_tilak@epam.com"
  }

  depends_on = [azurerm_resource_group.rgdetails]
}

resource "azurerm_virtual_network" "vnetdetails" {
  name                = var.vnet_name
  resource_group_name = azurerm_resource_group.rgdetails.name
  location            = azurerm_resource_group.rgdetails.location
  address_space       = var.address_space

  tags = {
    Creator = "suryansh_tilak@epam.com"
  }

  depends_on = [azurerm_resource_group.rgdetails]
}

resource "azurerm_subnet" "frontend" {
  name                 = var.frontend_subnet_name
  resource_group_name  = azurerm_resource_group.rgdetails.name
  virtual_network_name = azurerm_virtual_network.vnetdetails.name
  address_prefixes     = var.frontend_subnet_prefix
}

resource "azurerm_subnet" "backend" {
  name                 = var.backend_subnet_name
  resource_group_name  = azurerm_resource_group.rgdetails.name
  virtual_network_name = azurerm_virtual_network.vnetdetails.name
  address_prefixes     = var.backend_subnet_prefix
}
