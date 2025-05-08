terraform {
  backend "azurerm" {
    resource_group_name   = "rg-terraform-state"
    storage_account_name  = "westjetterraformstate"
    container_name        = "tfstate"
    key                   = "dns-poc.tfstate"
  }
}