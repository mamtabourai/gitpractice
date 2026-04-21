resource "azurerm_resource_group" "jannat" {
  name     = var.mam
  location = "south india"
}

resource "azurerm_storage_account" "janstorage" {
  name                     = "jannatstrg"
  resource_group_name      = azurerm_resource_group.jannat.name
  location                 = azurerm_resource_group.jannat.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "container" {
  name                  = "jannatcntr"
  storage_account_name  = azurerm_storage_account.janstorage.name
  container_access_type = "blob"
}

