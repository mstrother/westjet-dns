module "westjetbusiness_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetbusiness.com"
  www_ip              = "1.2.3.16"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}
