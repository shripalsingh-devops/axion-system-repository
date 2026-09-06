resource "azurerm_storage_container" "cont" {
    for_each = var.cont
    name = each.value.cont_name
    storage_account_id = data.azurerm_storage_account.example[each.key].id
  container_access_type = each.value.container_access_type
}