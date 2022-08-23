resource "azurerm_storage_account" "harryseong_sa" {
  name                     = "harryseong"
  resource_group_name      = azurerm_resource_group.harryseong_rg.name
  location                 = azurerm_resource_group.harryseong_rg.location
  account_kind             = "StorageV2"
  account_tier             = "Standard"
  account_replication_type = "LRS"

  enable_https_traffic_only = true

  static_website {
    index_document = "index.html"
  }
  tags = { Automation = "Terraform" }
}

resource "azurerm_storage_container" "harryseong_container" {
  name                  = "$web"
  storage_account_name  = azurerm_storage_account.harryseong_sa.name
  container_access_type = "blob"
}
