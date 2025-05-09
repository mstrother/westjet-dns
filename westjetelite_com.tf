module "westjetelite_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetelite.com"
  www_ip              = "1.2.3.18"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}
