#RG
rg = {
    rg1 = {
        name = "dev_rg"
        location = "central India"
        managed_by ="Anup"
        tags = {
            env = "dev"
        }
    }
}
#VNET
vnet = {
    vnet1 = {
        name = "testvnet"
        location = "central India"
        address_space = ["10.20.0.0/24"]
        resource_group_name = "dev_rg"
    }
}
#SUBNET
sub = {
    sub1 = {
        name = "testsub"
        virtual_network_name = "testvnet"
        resource_group_name = "dev_rg"
        address_prefixes =( ["10.20.0.64/26" , "10.20.0.128/26"] )
    }
        sub2 = {
        name = "testsub2"
        virtual_network_name = "testvnet"
        resource_group_name = "dev_rg"
        address_prefixes = ["10.20.0.0/26"]
    }
}
#PIP
pip = {
    pip1 = {
        name = "testpip"
        location = "central India"
        resource_group_name = "dev_rg"
        allocation_method = "Static"
    }
}
#NIC
nic ={
    nic1 = {
        name = "testnic"
        location ="central India"
        rg_name = "dev_rg"
        ic_name = "testic"
        subnet_name = "testsub"
        vnet_name = "testvnet"
        pip_name = "testpip"
        private_ip = "Dynamic"
    }
}
#NSG
nsg ={
    nsg1 = {
name = "testnsg"
location = "central India"
resource_group_name = "dev_rg"
  srname = "testsrname"
        access = "Allow"
        direction = "Inbound"
        protocol = "Tcp"
        priority = "100"
        source_port_range = "*"
        destination_port_range = "*"
        source_address_prefix = "*"
        destination_address_prefix = "*"

        httpname = "testhttpname"
        access1 = "Allow"
        direction1 = "Inbound"
        protocol1 = "Tcp"
        priority1 = "110"
        source_port_range1 = "*"
        destination_port_range1 = "80"
        source_address_prefix1 = "*"
        destination_address_prefix1 = "*"
    }
}
nic_nsg = {
    nig = {
        rg_name = "dev_rg"
        network = "testnic"
        security = "testnsg"
    }
}
#VM
vm={
    vm1={

name = "testvm"
    resource_group_name = "dev_rg"
    location = "central India"
    size = "Standard_D2s_v3"
    admin_username = "adminuser"
    admin_password = "Adminpass123"
pip_name = "testpip"
    caching = "ReadWrite"
        storage_account_type = "Standard_LRS"
network = "testnic"
        publisher = "Canonical"
        offer = "0001-com-ubuntu-server-jammy"
        sku = "22_04-lts-gen2"
        version = "latest"
    }
}
#STORAGE
store ={
    store1 = {
        name = "anupstorage88888"
         resource_group_name = "dev_rg"
    location = "central India"
     account_tier= "Standard"
    account_replication_type = "LRS"

    }
}