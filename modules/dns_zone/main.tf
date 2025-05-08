locals {
  dns_resource_group = "rg-westjet-dns"  # 👈 your real resource group name here
}

resource "azurerm_dns_zone" "this" {
  name                = var.zone_name
}

resource "azurerm_dns_a_record" "www" {
  name                = "www"
  zone_name           = azurerm_dns_zone.this.name
  ttl                 = 300
  records             = [var.www_ip]
}

resource "azurerm_dns_txt_record" "spf" {
  name                = "@"
  zone_name           = azurerm_dns_zone.this.name
  ttl                 = 3600

  record {
    value = var.spf_record
  }
}
