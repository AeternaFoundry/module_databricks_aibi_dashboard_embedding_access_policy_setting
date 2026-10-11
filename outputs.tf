output "aibi_dashboard_embedding_access_policy_settings_id" {
  description = "Map of id values across all aibi_dashboard_embedding_access_policy_settings, keyed the same as var.aibi_dashboard_embedding_access_policy_settings except keys with no id are omitted"
  value       = { for k, v in databricks_aibi_dashboard_embedding_access_policy_setting.aibi_dashboard_embedding_access_policy_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "aibi_dashboard_embedding_access_policy_settings_aibi_dashboard_embedding_access_policy" {
  description = "Map of aibi_dashboard_embedding_access_policy values across all aibi_dashboard_embedding_access_policy_settings, keyed the same as var.aibi_dashboard_embedding_access_policy_settings except keys with no aibi_dashboard_embedding_access_policy are omitted"
  value       = { for k, v in databricks_aibi_dashboard_embedding_access_policy_setting.aibi_dashboard_embedding_access_policy_settings : k => one(v.aibi_dashboard_embedding_access_policy) if v.aibi_dashboard_embedding_access_policy != null && length(v.aibi_dashboard_embedding_access_policy) > 0 }
}
output "aibi_dashboard_embedding_access_policy_settings_etag" {
  description = "Map of etag values across all aibi_dashboard_embedding_access_policy_settings, keyed the same as var.aibi_dashboard_embedding_access_policy_settings except keys with no etag are omitted"
  value       = { for k, v in databricks_aibi_dashboard_embedding_access_policy_setting.aibi_dashboard_embedding_access_policy_settings : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "aibi_dashboard_embedding_access_policy_settings_provider_config" {
  description = "Map of provider_config values across all aibi_dashboard_embedding_access_policy_settings, keyed the same as var.aibi_dashboard_embedding_access_policy_settings except keys with no provider_config are omitted"
  value       = { for k, v in databricks_aibi_dashboard_embedding_access_policy_setting.aibi_dashboard_embedding_access_policy_settings : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}
output "aibi_dashboard_embedding_access_policy_settings_setting_name" {
  description = "Map of setting_name values across all aibi_dashboard_embedding_access_policy_settings, keyed the same as var.aibi_dashboard_embedding_access_policy_settings except keys with no setting_name are omitted"
  value       = { for k, v in databricks_aibi_dashboard_embedding_access_policy_setting.aibi_dashboard_embedding_access_policy_settings : k => v.setting_name if v.setting_name != null && length(v.setting_name) > 0 }
}

