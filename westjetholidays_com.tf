module "westjetholidays_com" {
  source              = "./modules/dns_zone"
  zone_name           = "westjetholidays.com"
  www_ip              = "1.2.3.19"
  spf_record          = "v=spf1 include:spf.protection.outlook.com -all"
}