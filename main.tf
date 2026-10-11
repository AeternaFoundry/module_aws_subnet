resource "aws_subnet" "subnets" {
  for_each = var.subnets

  vpc_id                                         = each.value.vpc_id
  region                                         = each.value.region
  private_dns_hostname_type_on_launch            = each.value.private_dns_hostname_type_on_launch
  outpost_arn                                    = each.value.outpost_arn
  map_public_ip_on_launch                        = each.value.map_public_ip_on_launch
  map_customer_owned_ip_on_launch                = each.value.map_customer_owned_ip_on_launch
  ipv6_netmask_length                            = each.value.ipv6_netmask_length
  ipv6_native                                    = each.value.ipv6_native
  ipv6_ipam_pool_id                              = each.value.ipv6_ipam_pool_id
  ipv6_cidr_block                                = each.value.ipv6_cidr_block
  tags                                           = each.value.tags
  ipv4_netmask_length                            = each.value.ipv4_netmask_length
  enable_resource_name_dns_aaaa_record_on_launch = each.value.enable_resource_name_dns_aaaa_record_on_launch
  enable_resource_name_dns_a_record_on_launch    = each.value.enable_resource_name_dns_a_record_on_launch
  enable_lni_at_device_index                     = each.value.enable_lni_at_device_index
  enable_dns64                                   = each.value.enable_dns64
  customer_owned_ipv4_pool                       = each.value.customer_owned_ipv4_pool
  cidr_block                                     = each.value.cidr_block
  availability_zone_id                           = each.value.availability_zone_id
  availability_zone                              = each.value.availability_zone
  assign_ipv6_address_on_creation                = each.value.assign_ipv6_address_on_creation
  ipv4_ipam_pool_id                              = each.value.ipv4_ipam_pool_id
  tags_all                                       = each.value.tags_all
}

