miniproject = {
  miniproject1 = {
    rg_name       = "mp-rg"
    location      = "uksouth"
    acr_name      = "mpacrindia"
    sku           = "Standard"
    admin_enabled = false
    pool-name     = "default"
    node_count    = "1"
    vm_size       = "Standard_D2_v2"
    aks_name      = "dev-aks"
    dns_prefix    = "dev-dns"
    sql_name      = "dev-sqlmini"
    sql-version   = "12.0"
    db-name       = "dev-db"
    # server_id ="dev-server"
    collection   = "SQL_Latin1_General_CP1_CI_AS"
    license_type = "LicenseIncluded"
    max_size_gb  = "1"
    sku_name     = "S0"
    enclave_type = "VBS"
  }
}