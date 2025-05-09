module "westjetcargo_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetcargo.com"
  www_ip              = "1.2.3.8"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}