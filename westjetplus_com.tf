module "westjetplus_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetplus.com"
  www_ip              = "1.2.3.17"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}
