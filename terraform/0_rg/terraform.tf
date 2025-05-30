terraform {
  #Use the latest by default, uncomment below to pin or use hcl.lck
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      #      configuration_aliases = [azurerm.default-provider]
      #      version = "~> 2.68.0"
    }

    random = {
      source = "hashicorp/random"
    }
  }
  backend "azurerm" {
    key = "lbd-uks-prd-0-rg.terraform.tfstate"
  }
}
