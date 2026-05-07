resource "azurerm_network_interface" "nicblock" {
    for_each = var.nic
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.rg_name
    ip_configuration {
        name = each.value.ic_name
        subnet_id =data.azurerm_subnet.dsub[each.key].id
        private_ip_address_allocation = each.value.private_ip
        public_ip_address_id = data.azurerm_public_ip.dpip[each.key].id 
    }
}