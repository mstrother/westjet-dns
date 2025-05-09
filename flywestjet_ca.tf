module "flywestjet_ca" {
  source              = "./modules/dns_zone"
  zone_name           = "flywestjet.ca"
  www_ip              = "1.2.3.7"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}