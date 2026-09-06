rgs = {
  rg1 = {
    name     = "shri"
    location = "centralindia"
  }
}
vnet = {
  vnet1 = {
    name                = "vnet"
    location = "centralindia"
    resource_group_name = "shri"
    address_space       = ["10.0.0.0/16"]
  }
}
subnet = {
  subnet1 = {
    name                 = "frontend"
    resource_group_name  = "shri"
    virtual_network_name = "vnet"
    address_prefixes       = ["10.0.1.0/24"]
  }
}
stg = {
  stg1 = {
    stg_name                 = "5656shri7767"
    location                 = "centralindia"
    resource_group_name      = "shri"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}
cont = {
cont1 = {
name = "5656shri7767"
resource_group_name = "shri"
cont_name                  = "preprodcontainer"
container_access_type = "private"
}
}