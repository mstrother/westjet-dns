module "westjettravel_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjettravel.com"
  www_ip              = "1.2.3.20"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}