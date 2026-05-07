output "vmip" {
    value = { for k,v in data.azurerm_public_ip.dpip : k => v.ip_address }
}