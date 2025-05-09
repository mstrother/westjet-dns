module "flywestjet_com" {
  source              = "./modules/dns_zone"
  zone_name           = "flywestjet.com"
  www_ip              = "1.2.3.6"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}