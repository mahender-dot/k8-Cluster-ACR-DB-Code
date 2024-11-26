resource "azurerm_container_registry" "ms-acr" {
  for_each = var.ms-acr
  name                = each.value.acr_name
  resource_group_name = each.value.rg_name
  location            = each.value.location 
  sku                 = each.value.sku
  admin_enabled       = each.value.admin_enabled
#   georeplications {
#     location                = "West US"
#     zone_redundancy_enabled = true
#     tags                    = {}
#   }
#   georeplications {
#     location                = "North Europe"
#     zone_redundancy_enabled = true
#     tags                    = {}
#   }
}