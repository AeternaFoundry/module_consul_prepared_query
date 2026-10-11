resource "consul_prepared_query" "prepared_queries" {
  for_each = var.prepared_queries

  name             = each.value.name
  service          = each.value.service
  connect          = each.value.connect
  datacenter       = each.value.datacenter
  ignore_check_ids = each.value.ignore_check_ids
  near             = each.value.near
  node_meta        = each.value.node_meta
  only_passing     = each.value.only_passing
  service_meta     = each.value.service_meta
  session          = each.value.session
  stored_token     = each.value.stored_token
  tags             = each.value.tags
  token            = each.value.token

  dynamic "dns" {
    for_each = each.value.dns != null ? [each.value.dns] : []
    content {
      ttl = dns.value.ttl
    }
  }

  dynamic "failover" {
    for_each = each.value.failover != null ? [each.value.failover] : []
    content {
      datacenters = failover.value.datacenters
      nearest_n   = failover.value.nearest_n
      dynamic "targets" {
        for_each = failover.value.targets != null ? failover.value.targets : []
        content {
          datacenter = targets.value.datacenter
          peer       = targets.value.peer
        }
      }
    }
  }

  dynamic "template" {
    for_each = each.value.template != null ? [each.value.template] : []
    content {
      regexp            = template.value.regexp
      remove_empty_tags = template.value.remove_empty_tags
      type              = template.value.type
    }
  }
}

