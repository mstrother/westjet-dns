module "westjetvacations_com" {
  source     = "./modules/dns_zone"
  zone_name  = "westjetvacations.com"
  www_ip     = "1.2.3.3"
  spf_record = "v=spf1 include:spf.protection.outlook.com -all"
}

resource "azurerm_dns_a_record" "westjetvacations_com_api" {
  name                = "api"
  zone_name           = module.westjetvacations_com.zone_name
  resource_group_name = "rg-westjet-dns"
  ttl                 = 300
  records             = ["4.5.6.9"]
}
