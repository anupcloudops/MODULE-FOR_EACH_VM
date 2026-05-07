data "azurerm_subnet" "dsub" {
  for_each             = var.nic
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.rg_name
}

data "azurerm_public_ip" "dpip" {
  for_each            = var.nic
  name                = each.value.pip_name
  resource_group_name = each.value.rg_name
}