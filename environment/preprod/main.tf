module "rgs" {
  source = "../../child/azurerm_resource_group"
  rgs    = var.rgs

}
module "vnet" {
  source     = "../../child/azurerm_vnet"
  vnet       = var.vnet
  depends_on = [module.rgs]


}
module "subnet" {
  source     = "../../child/azurerm_subnet"
  subnet     = var.subnet
  depends_on = [module.vnet]

}
module "stg" {
  source     = "../../child/azurerm_storage_account"
  stg        = var.stg
  depends_on = [module.rgs]

}
module "cont" {
  source     = "../../child/azurerm_container"
  cont       = var.cont
  depends_on = [module.stg]

}