terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"  # ✅ Locks you to any 3.x version (latest 3.x allowed)
    }
  }

  backend "azurerm" {
    resource_group_name   = "rg-terraform-state"
    storage_account_name  = "westjetterraformstate"
    container_name        = "tfstate"
    key                   = "dns-poc.tfstate"
  }
}

provider "azurerm" {
  features {}

  use_oidc = true
}
