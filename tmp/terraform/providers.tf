terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.5.0"
    }
  }
}

provider "azurerm" {
    subscription_id ="cedac5ec-a41d-4115-9ef2-f530aeb36ef3"
    resource_provider_registrations = "none"
    features {}
}