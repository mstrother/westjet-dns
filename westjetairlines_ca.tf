module "westjetairlines_ca" {
  source     = "./modules/dns_zone"
  zone_name  = "westjetairlines.ca"
  resource_group_name = local.dns_resource_group
  www_ip     = "1.2.3.5"
  spf_record = "v=spf1 include:spf.protection.outlook.com -all"
}

resource "azurerm_dns_a_record" "westjetairlines_ca_api" {
  name                = "api"
  zone_name           = module.westjetairlines_ca.zone_name
  resource_group_name = local.dns_resource_group
  ttl                 = 300
  records             = ["4.5.6.11"]
}