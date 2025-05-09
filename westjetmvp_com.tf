module "westjetmvp_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetmvp.com"
  www_ip              = "1.2.3.11"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}
