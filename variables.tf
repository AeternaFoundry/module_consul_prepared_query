variable "prepared_queries" {
  description = <<EOT
Map of prepared_queries, attributes below
Required:
    - name
    - service
Optional:
    - connect
    - datacenter
    - ignore_check_ids
    - near
    - node_meta
    - only_passing
    - service_meta
    - session
    - stored_token
    - tags
    - token
    - dns (block):
        - ttl (optional)
    - failover (block):
        - datacenters (optional)
        - nearest_n (optional)
        - targets (optional, block):
            - datacenter (optional)
            - peer (optional)
    - template (block):
        - regexp (required)
        - remove_empty_tags (optional)
        - type (required)
EOT

  type = map(object({
    name             = string
    service          = string
    connect          = optional(bool)
    datacenter       = optional(string)
    ignore_check_ids = optional(list(string))
    near             = optional(string)
    node_meta        = optional(map(string))
    only_passing     = optional(bool)
    service_meta     = optional(map(string))
    session          = optional(string)
    stored_token     = optional(string)
    tags             = optional(set(string))
    token            = optional(string)
    dns = optional(object({
      ttl = optional(string)
    }))
    failover = optional(object({
      datacenters = optional(list(string))
      nearest_n   = optional(number)
      targets = optional(list(object({
        datacenter = optional(string)
        peer       = optional(string)
      })))
    }))
    template = optional(object({
      regexp            = string
      remove_empty_tags = optional(bool)
      type              = string
    }))
  }))
}

