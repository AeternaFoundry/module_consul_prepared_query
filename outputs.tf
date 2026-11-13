output "prepared_queries_id" {
  description = "Map of id values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.id }
}
output "prepared_queries_connect" {
  description = "Map of connect values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.connect }
}
output "prepared_queries_datacenter" {
  description = "Map of datacenter values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.datacenter }
}
output "prepared_queries_dns" {
  description = "Map of dns values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => one(v.dns) }
}
output "prepared_queries_failover" {
  description = "Map of failover values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => one(v.failover) }
}
output "prepared_queries_ignore_check_ids" {
  description = "Map of ignore_check_ids values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.ignore_check_ids }
}
output "prepared_queries_name" {
  description = "Map of name values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.name }
}
output "prepared_queries_near" {
  description = "Map of near values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.near }
}
output "prepared_queries_node_meta" {
  description = "Map of node_meta values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.node_meta }
}
output "prepared_queries_only_passing" {
  description = "Map of only_passing values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.only_passing }
}
output "prepared_queries_service" {
  description = "Map of service values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.service }
}
output "prepared_queries_service_meta" {
  description = "Map of service_meta values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.service_meta }
}
output "prepared_queries_session" {
  description = "Map of session values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.session }
}
output "prepared_queries_stored_token" {
  description = "Map of stored_token values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.stored_token }
}
output "prepared_queries_tags" {
  description = "Map of tags values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.tags }
}
output "prepared_queries_template" {
  description = "Map of template values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => one(v.template) }
}
output "prepared_queries_token" {
  description = "Map of token values across all prepared_queries, keyed the same as var.prepared_queries"
  value       = { for k, v in consul_prepared_query.prepared_queries : k => v.token }
  sensitive   = true
}

