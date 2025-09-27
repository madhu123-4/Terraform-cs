output "resource_group_name" {
  value = azurerm_resource_group.my_rg.name
}

output "vnet_name" {
  value = azurerm_virtual_network.my_vnet.name
}

output "subnet1_name" {
  value = azurerm_subnet.my_subnet1.name
}

output "subnet2_name" {
  value = azurerm_subnet.my_subnet2.name
}
