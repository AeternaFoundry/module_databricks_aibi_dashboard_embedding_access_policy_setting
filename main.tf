resource "databricks_aibi_dashboard_embedding_access_policy_setting" "aibi_dashboard_embedding_access_policy_settings" {
  for_each = var.aibi_dashboard_embedding_access_policy_settings

  etag         = each.value.etag
  setting_name = each.value.setting_name

  aibi_dashboard_embedding_access_policy {
    access_policy_type = each.value.aibi_dashboard_embedding_access_policy.access_policy_type
  }

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

