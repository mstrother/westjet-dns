module "westjet_com" {
  source     = "./modules/dns_zone"
  zone_name  = "westjet.com"
  www_ip     = "1.2.3.1"
  spf_record = "v=spf1 include:spf.protection.outlook.com -all"
}

resource "azurerm_dns_a_record" "westjet_com_api" {
  name                = "api"
  zone_name           = module.westjet_com.zone_name
  resource_group_name = local.dns_resource_group
  ttl                 = 300
  records             = ["4.5.6.7"]
}