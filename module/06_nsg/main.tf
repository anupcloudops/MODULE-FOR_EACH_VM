resource "azurerm_network_security_group" "nsgblock" {
    for_each = var.nsg
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name

security_rule{
   
        name = each.value.srname
        access = each.value.access
        direction = each.value.direction
        protocol = each.value.protocol
        priority = each.value.priority
        source_port_range = each.value.source_port_range
        destination_port_range = each.value.destination_port_range
        source_address_prefix = each.value.source_address_prefix
        destination_address_prefix = each.value.destination_address_prefix
    }
      security_rule{
        name = each.value.httpname
        access = each.value.access1
        direction = each.value.direction1
        protocol = each.value.protocol1
        priority = each.value.priority1
        source_port_range = each.value.source_port_range1
        destination_port_range = each.value.destination_port_range1
        source_address_prefix = each.value.source_address_prefix1
        destination_address_prefix = each.value.destination_address_prefix1
    }
}