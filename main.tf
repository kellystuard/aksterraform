module "efk" {
    source = "modules/efk"
    instanceCount = "2"
}

module "ms"{
    source = "modules/ms"
    instanceCount = "3"
}