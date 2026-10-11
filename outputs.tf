output "prepared_queries_id" {
  description = "Map of id values across all prepared_queries, keyed the same as var.prepared_queries except keys with no id are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.id if v.id != null && length(v.id) > 0 }
}
output "prepared_queries_connect" {
  description = "Map of connect values across all prepared_queries, keyed the same as var.prepared_queries except keys with no connect are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.connect if v.connect != null }
}
output "prepared_queries_datacenter" {
  description = "Map of datacenter values across all prepared_queries, keyed the same as var.prepared_queries except keys with no datacenter are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.datacenter if v.datacenter != null && length(v.datacenter) > 0 }
}
output "prepared_queries_dns" {
  description = "Map of dns values across all prepared_queries, keyed the same as var.prepared_queries except keys with no dns are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => one(v.dns) if v.dns != null && length(v.dns) > 0 }
}
output "prepared_queries_failover" {
  description = "Map of failover values across all prepared_queries, keyed the same as var.prepared_queries except keys with no failover are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => one(v.failover) if v.failover != null && length(v.failover) > 0 }
}
output "prepared_queries_ignore_check_ids" {
  description = "Map of ignore_check_ids values across all prepared_queries, keyed the same as var.prepared_queries except keys with no ignore_check_ids are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.ignore_check_ids if v.ignore_check_ids != null && length(v.ignore_check_ids) > 0 }
}
output "prepared_queries_name" {
  description = "Map of name values across all prepared_queries, keyed the same as var.prepared_queries except keys with no name are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.name if v.name != null && length(v.name) > 0 }
}
output "prepared_queries_near" {
  description = "Map of near values across all prepared_queries, keyed the same as var.prepared_queries except keys with no near are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.near if v.near != null && length(v.near) > 0 }
}
output "prepared_queries_node_meta" {
  description = "Map of node_meta values across all prepared_queries, keyed the same as var.prepared_queries except keys with no node_meta are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.node_meta if v.node_meta != null && length(v.node_meta) > 0 }
}
output "prepared_queries_only_passing" {
  description = "Map of only_passing values across all prepared_queries, keyed the same as var.prepared_queries except keys with no only_passing are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.only_passing if v.only_passing != null }
}
output "prepared_queries_service" {
  description = "Map of service values across all prepared_queries, keyed the same as var.prepared_queries except keys with no service are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.service if v.service != null && length(v.service) > 0 }
}
output "prepared_queries_service_meta" {
  description = "Map of service_meta values across all prepared_queries, keyed the same as var.prepared_queries except keys with no service_meta are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.service_meta if v.service_meta != null && length(v.service_meta) > 0 }
}
output "prepared_queries_session" {
  description = "Map of session values across all prepared_queries, keyed the same as var.prepared_queries except keys with no session are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.session if v.session != null && length(v.session) > 0 }
}
output "prepared_queries_stored_token" {
  description = "Map of stored_token values across all prepared_queries, keyed the same as var.prepared_queries except keys with no stored_token are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.stored_token if v.stored_token != null && length(v.stored_token) > 0 }
}
output "prepared_queries_tags" {
  description = "Map of tags values across all prepared_queries, keyed the same as var.prepared_queries except keys with no tags are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "prepared_queries_template" {
  description = "Map of template values across all prepared_queries, keyed the same as var.prepared_queries except keys with no template are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => one(v.template) if v.template != null && length(v.template) > 0 }
}
output "prepared_queries_token" {
  description = "Map of token values across all prepared_queries, keyed the same as var.prepared_queries except keys with no token are omitted"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.token if v.token != null && length(v.token) > 0 }
  sensitive   = true
}

