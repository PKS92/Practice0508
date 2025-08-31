terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version ="4.29.0"
        }
    }
terraform {
  backend "azurerm" {
    resource_group_name  = "june25"
    storage_account_name = "june25sa"
    container_name       = "june25container"
    key                  = "RYAN.tfstate"
  }
}
}
provider "azurerm" {
    features {}
    subscription_id = "5fbead97-423e-4814-809c-114db991d911"
}
