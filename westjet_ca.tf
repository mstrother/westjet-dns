module "westjet_ca" {
  source     = "./modules/dns_zone"
  zone_name  = "westjet.ca"
  www_ip     = "1.2.3.2"
  spf_record = "v=spf1 include:spf.protection.outlook.com -all"
}

resource "azurerm_dns_a_record" "westjet_ca_api" {
  name                = "api"
  zone_name           = module.westjet_ca.zone_name
  resource_group_name = "rg-westjet-dns"
  ttl                 = 300
  records             = ["4.5.6.8"]
}
