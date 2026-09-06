data "azurerm_storage_account" "example" {
    for_each = var.cont
  name                = each.value.name
  resource_group_name = each.value.resource_group_name
}