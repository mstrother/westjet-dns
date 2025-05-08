output "zone_name" {
  description = "The DNS zone name."
  value       = azurerm_dns_zone.this.name
}

output "resource_group_name" {
  description = "The DNS zone's resource group."
  value       = azurerm_dns_zone.this.resource_group_name
}