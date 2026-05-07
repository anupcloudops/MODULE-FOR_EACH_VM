data "azurerm_network_interface" "dnic" {
    for_each = var.vm
    name = each.value.network
    resource_group_name = each.value.resource_group_name
}
data "azurerm_public_ip" "dpip" {
  for_each            = var.vm
  name                = each.value.pip_name
  resource_group_name = each.value.resource_group_name
}