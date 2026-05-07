data "azurerm_network_interface" "dnic" {
    for_each = var.nic_nsg
    name = each.value.network
    resource_group_name = each.value.rg_name
}
data "azurerm_network_security_group" "dnsg"  {
    for_each = var.nic_nsg
    name = each.value.security
     resource_group_name = each.value.rg_name
}