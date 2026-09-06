terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "5.4.0"
    }
  }
  backend "azurerm" {
    resource_group_name = "shri"
    storage_account_name = "5656shri7767"
    container_name = "preprodcontainer"
    key = "preprod"

  }
}

provider "azurerm" {
  features {

  }
}