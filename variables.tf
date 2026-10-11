variable "aibi_dashboard_embedding_access_policy_settings" {
  description = <<EOT
Map of aibi_dashboard_embedding_access_policy_settings, attributes below
Required:
    - aibi_dashboard_embedding_access_policy (block):
        - access_policy_type (required)
Optional:
    - etag
    - setting_name
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    etag         = optional(string)
    setting_name = optional(string)
    aibi_dashboard_embedding_access_policy = object({
      access_policy_type = string
    })
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

