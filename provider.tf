terraform {
    required_providers {
        azurerm = {
            source = "hashicorp/azurerm"
            version ="4.29.0"
        }
    }
}
provider "azurerm" {
    features {}
    subscription_id = "2de7dbe0-c6a5-4c0e-974b-c841f332ae0d"
}