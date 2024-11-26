terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.11.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "0b8b93f2-e3b0-425b-a940-6a2ce7a594b0"
}