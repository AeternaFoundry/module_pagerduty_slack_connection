resource "pagerduty_slack_connection" "slack_connections" {
  for_each = var.slack_connections

  channel_id        = each.value.channel_id
  notification_type = each.value.notification_type
  source_id         = each.value.source_id
  source_type       = each.value.source_type
  workspace_id      = each.value.workspace_id

  dynamic "config" {
    for_each = each.value.config
    content {
      events     = config.value.events
      priorities = config.value.priorities
      urgency    = config.value.urgency
    }
  }
}

