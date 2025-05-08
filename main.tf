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

module "westjet_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjet.com"
  www_ip              = "1.2.3.1"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjet_ca" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjet.ca"
  www_ip              = "1.2.3.2"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetvacations_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetvacations.com"
  www_ip              = "1.2.3.3"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetairlines_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetairlines.com"
  www_ip              = "1.2.3.4"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetairlines_ca" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetairlines.ca"
  www_ip              = "1.2.3.5"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "flywestjet_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "flywestjet.com"
  www_ip              = "1.2.3.6"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "flywestjet_ca" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "flywestjet.ca"
  www_ip              = "1.2.3.7"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetcargo_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetcargo.com"
  www_ip              = "1.2.3.8"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetcargo_ca" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetcargo.ca"
  www_ip              = "1.2.3.9"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetexpress_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetexpress.com"
  www_ip              = "1.2.3.10"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetmvp_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetmvp.com"
  www_ip              = "1.2.3.11"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetlink_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetlink.com"
  www_ip              = "1.2.3.12"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetmagazine_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetmagazine.com"
  www_ip              = "1.2.3.13"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetwifi_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetwifi.com"
  www_ip              = "1.2.3.14"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetrewards_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetrewards.com"
  www_ip              = "1.2.3.15"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetbusiness_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetbusiness.com"
  www_ip              = "1.2.3.16"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetplus_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetplus.com"
  www_ip              = "1.2.3.17"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetelite_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetelite.com"
  www_ip              = "1.2.3.18"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjetholidays_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjetholidays.com"
  www_ip              = "1.2.3.19"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}

module "westjettravel_com" {
  source              = "./modules/dns_zone"
  resource_group_name = var.resource_group_name
  zone_name           = "westjettravel.com"
  www_ip              = "1.2.3.20"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}