module "westjetexpress_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetexpress.com"
  www_ip              = "1.2.3.10"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}