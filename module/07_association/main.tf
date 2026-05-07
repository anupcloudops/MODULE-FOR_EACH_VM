resource "azurerm_network_interface_security_group_association" "nic_nsg" {
    for_each = var.nic_nsg
    network_interface_id = data.azurerm_network_interface.dnic[each.key].id
    network_security_group_id = data.azurerm_network_security_group.dnsg[each.key].id
}