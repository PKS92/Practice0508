resource "azurerm_resource_group" "Juneresourcegroup" {
name = "june25"
location = "East US"
}

resource "azurerm_storage_account" "junestorageaccount" {
name = "june25sa"
resource_group_name = azurerm_resource_group.Juneresourcegroup.name
location = azurerm_resource_group.Juneresourcegroup.location
account_tier = "Standard"
account_replication_type = "LRS"
}

resource "azurerm_storage_container" "June25container" {
    name = "june25container"
    storage_account_id = azurerm_storage_account.junestorageaccount.id
    container_access_type = "private"
}