module "westjetrewards_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetrewards.com"
  www_ip              = "1.2.3.15"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}
