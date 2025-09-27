terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0" # Always use latest stable version
    }
  }
}

provider "azurerm" {
  features {}
}
