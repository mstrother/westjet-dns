resource "azurerm_dns_zone" "westjetcargo_com" {
  name                = "westjetcargo.com"
  resource_group_name = var.resource_group_name
}

resource "azurerm_dns_a_record" "www" {
  name                = "www"
  zone_name           = azurerm_dns_zone.westjetcargo_com.name
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = ["1.2.3.8"]
}

resource "azurerm_dns_txt_record" "spf" {
  name                = "@"
  zone_name           = azurerm_dns_zone.westjetcargo_com.name
  resource_group_name = var.resource_group_name
  ttl                 = 3600
  records = [
    "v=spf1 include:spf.protection.outlook.com -all"
  ]
}
