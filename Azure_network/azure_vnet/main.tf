locals {
  environment = "Production"
}
#create a resource group
resource "azurerm_resource_group" "my_rg" {
  name     = var.rg_name
  location = var.rg_location
}
# Create virtual network
resource "azurerm_virtual_network" "my_vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.my_rg.location
  resource_group_name = azurerm_resource_group.my_rg.name

  tags = {
    environment = local.environment
  }
}
# Create subnet
resource "azurerm_subnet" "my_subnet1" {
  name                 = var.subnet1_name
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.my_vnet.name
  address_prefixes     = var.subnet1_address_space
}
resource "azurerm_subnet" "my_subnet2" {
  name                 = var.subnet2_name
  resource_group_name  = azurerm_resource_group.my_rg.name
  virtual_network_name = azurerm_virtual_network.my_vnet.name
  address_prefixes     = var.subnet2_address_space
}
  
