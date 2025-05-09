module "westjetwifi_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetwifi.com"
  www_ip              = "1.2.3.14"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}