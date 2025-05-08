module "westjetairlines_com" {
  source     = "./modules/dns_zone"
  zone_name  = "westjetairlines.com"
  www_ip     = "1.2.3.4"
  spf_record = "v=spf1 include:spf.protection.outlook.com -all"
}

resource "azurerm_dns_a_record" "westjetairlines_com_api" {
  name                = "api"
  zone_name           = module.westjetairlines_com.zone_name
  resource_group_name = local.dns_resource_group
  ttl                 = 300
  records             = ["4.5.6.10"]
}
