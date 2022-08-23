resource "azurerm_virtual_network" "harryseong_network" {
  name                = var.vnet_configs.name
  resource_group_name = azurerm_resource_group.harryseong_rg.name
  location            = azurerm_resource_group.harryseong_rg.location
  address_space       = var.vnet_configs.address_space
}


