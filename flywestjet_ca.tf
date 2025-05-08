resource "azurerm_dns_zone" "flywestjet_ca" {
  name                = "flywestjet.ca"
  resource_group_name = var.resource_group_name
}

resource "azurerm_dns_a_record" "www" {
  name                = "www"
  zone_name           = azurerm_dns_zone.flywestjet_ca.name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = ["1.2.3.7"]
}

resource "azurerm_dns_txt_record" "spf" {
  name                = "@"
  zone_name           = azurerm_dns_zone.flywestjet_ca.name
  resource_group_name = var.resource_group_name
  ttl                 = 3600
  records = [
    "v=spf1 include:spf.protection.outlook.com -all"
  ]
}
