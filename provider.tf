terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version ="4.29.0"
        }
    }
  backend "azurerm" {
    resource_group_name  = "june25"
    storage_account_name = "june25sa"
    container_name       = "june25container"
    key                  = "RYAN.tfstate"
  }
}
provider "azurerm" {
    features {}
    subscription_id = "2de7dbe0-c6a5-4c0e-974b-c841f332ae0d"
}
