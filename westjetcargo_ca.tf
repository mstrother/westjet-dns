module "westjetcargo_ca" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetcargo.ca"
  www_ip              = "1.2.3.9"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}