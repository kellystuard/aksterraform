module "efk" {
    source = "modules/efk"
    instancecountEFK = "2"
}

module "ms"{
    source = "modules/ms"
    instancecountMS = "3"
}