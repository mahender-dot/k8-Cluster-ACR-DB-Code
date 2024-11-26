resource "azurerm_resource_group" "ms-rg" {
    for_each = var.msrg
    name = each.value.rg_name
    location = each.value.location
}