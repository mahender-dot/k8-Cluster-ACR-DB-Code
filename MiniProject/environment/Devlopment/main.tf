module "md-rg" {
  source = "../../childmodule/azure-resource-group"
  msrg   = var.miniproject
}

module "md-acr" {
  source     = "../../childmodule/azure-acr"
  ms-acr     = var.miniproject
  depends_on = [module.md-rg]
}

module "md-k8cl" {
  source     = "../../childmodule/azure-k8-cl"
  ms-k8cl    = var.miniproject
  depends_on = ["module.md-acr", "module.md-rg"]
}

module "md-sqldb" {
  source     = "../../childmodule/azure-sql-db"
  ms-sql     = var.miniproject
  depends_on = [module.md-k8cl]
}
