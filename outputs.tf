output "slack_connections_id" {
  description = "Map of id values across all slack_connections, keyed the same as var.slack_connections except keys with no id are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.id if v.id != null && length(v.id) > 0 }
}
output "slack_connections_channel_id" {
  description = "Map of channel_id values across all slack_connections, keyed the same as var.slack_connections except keys with no channel_id are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.channel_id if v.channel_id != null && length(v.channel_id) > 0 }
}
output "slack_connections_channel_name" {
  description = "Map of channel_name values across all slack_connections, keyed the same as var.slack_connections except keys with no channel_name are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.channel_name if v.channel_name != null && length(v.channel_name) > 0 }
}
output "slack_connections_config" {
  description = "Map of config values across all slack_connections, keyed the same as var.slack_connections except keys with no config are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.config if v.config != null && length(v.config) > 0 }
}
output "slack_connections_notification_type" {
  description = "Map of notification_type values across all slack_connections, keyed the same as var.slack_connections except keys with no notification_type are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.notification_type if v.notification_type != null && length(v.notification_type) > 0 }
}
output "slack_connections_source_id" {
  description = "Map of source_id values across all slack_connections, keyed the same as var.slack_connections except keys with no source_id are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.source_id if v.source_id != null && length(v.source_id) > 0 }
}
output "slack_connections_source_name" {
  description = "Map of source_name values across all slack_connections, keyed the same as var.slack_connections except keys with no source_name are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.source_name if v.source_name != null && length(v.source_name) > 0 }
}
output "slack_connections_source_type" {
  description = "Map of source_type values across all slack_connections, keyed the same as var.slack_connections except keys with no source_type are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.source_type if v.source_type != null && length(v.source_type) > 0 }
}
output "slack_connections_workspace_id" {
  description = "Map of workspace_id values across all slack_connections, keyed the same as var.slack_connections except keys with no workspace_id are omitted"
  value       = { for k, v in pagerduty_slack_connection.slack_connections : k => v.workspace_id if v.workspace_id != null && length(v.workspace_id) > 0 }
}

