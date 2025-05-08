variable "resource_group_name" {
  description = "The Azure resource group to hold the DNS zone."
  type        = string
}

variable "zone_name" {
  description = "The DNS zone name (e.g., westjet.com)."
  type        = string
}

variable "www_ip" {
  description = "The IP address for the www A record."
  type        = string
}

variable "spf_record" {
  description = "The SPF record value."
  type        = string
}