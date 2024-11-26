resource "azurerm_mssql_server" "ms-sqlserver" {
    for_each = var.ms-sql
  name                         = each.value.sql_name
  resource_group_name          = each.value.rg_name
  location                     = each.value.location
  version                      = each.value.sql-version
  administrator_login          = "msyadav"
  administrator_login_password = "password@123"
}

resource "azurerm_mssql_database" "ms-db" {
    depends_on = ["azurerm_mssql_server.ms-sqlserver"]
    for_each = var.ms-sql
  name         = each.value.db-name
  server_id    = azurerm_mssql_server.ms-sqlserver [each.key].id
  collation    = each.value.collection
  license_type = each.value.license_type
  max_size_gb  = each.value.max_size_gb
  sku_name     = each.value.sku_name
  enclave_type = each.value.enclave_type

  tags = {
    foo = "bar"
  }

  # prevent the possibility of accidental data loss
  lifecycle {
    prevent_destroy = false
  }
}