variable "subnets" {
  description = <<EOT
Map of subnets, attributes below
Required:
    - vpc_id
Optional:
    - assign_ipv6_address_on_creation
    - availability_zone
    - availability_zone_id
    - cidr_block
    - customer_owned_ipv4_pool
    - enable_dns64
    - enable_lni_at_device_index
    - enable_resource_name_dns_a_record_on_launch
    - enable_resource_name_dns_aaaa_record_on_launch
    - ipv4_ipam_pool_id
    - ipv4_netmask_length
    - ipv6_cidr_block
    - ipv6_ipam_pool_id
    - ipv6_native
    - ipv6_netmask_length
    - map_customer_owned_ip_on_launch
    - map_public_ip_on_launch
    - outpost_arn
    - private_dns_hostname_type_on_launch
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    vpc_id                                         = string
    region                                         = optional(string)
    private_dns_hostname_type_on_launch            = optional(string)
    outpost_arn                                    = optional(string)
    map_public_ip_on_launch                        = optional(bool)
    map_customer_owned_ip_on_launch                = optional(bool)
    ipv6_netmask_length                            = optional(number)
    ipv6_native                                    = optional(bool)
    ipv6_ipam_pool_id                              = optional(string)
    ipv6_cidr_block                                = optional(string)
    tags                                           = optional(map(string))
    ipv4_netmask_length                            = optional(number)
    enable_resource_name_dns_aaaa_record_on_launch = optional(bool)
    enable_resource_name_dns_a_record_on_launch    = optional(bool)
    enable_lni_at_device_index                     = optional(number)
    enable_dns64                                   = optional(bool)
    customer_owned_ipv4_pool                       = optional(string)
    cidr_block                                     = optional(string)
    availability_zone_id                           = optional(string)
    availability_zone                              = optional(string)
    assign_ipv6_address_on_creation                = optional(bool)
    ipv4_ipam_pool_id                              = optional(string)
    tags_all                                       = optional(map(string))
  }))
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

