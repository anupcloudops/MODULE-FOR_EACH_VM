module "rg" {
    source = "../../module/01_rg"
    rg = var.rg
}
module "vnet" {
    depends_on = [module.rg]
    source = "../../module/02_vnet"
    vnet = var.vnet
}
module "subnet" {
    depends_on = [module.vnet]
    source = "../../module/03_subnet"
    sub = var.sub
}
module "pip" {
    depends_on = [module.rg]
    source = "../../module/04_pip"
    pip = var.pip
}
module "nic" {
    depends_on = [module.pip, module.subnet]
    source = "../../module/05_network"
    nic = var.nic
}
module "nsg" {
    depends_on = [module.rg]
    source = "../../module/06_nsg"
    nsg = var.nsg
}
module "association" {
    depends_on = [module.nic , module.nsg ]
    source = "../../module/07_association"
    nic_nsg = var.nic_nsg
}

module "vm" {
    depends_on = [module.nic , module.rg ]
    source = "../../module/08_vm"
    vm = var.vm
}
module "storage" {
    depends_on = [module.rg ]
    source = "../../module/09_storage"
    store = var.store
}