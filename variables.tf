variable "slack_connections" {
  description = <<EOT
Map of slack_connections, attributes below
Required:
    - channel_id
    - notification_type
    - source_id
    - source_type
    - workspace_id
    - config (block):
        - events (required)
        - priorities (optional)
        - urgency (optional)
EOT

  type = map(object({
    channel_id        = string
    notification_type = string
    source_id         = string
    source_type       = string
    workspace_id      = string
    config = list(object({
      events     = set(string)
      priorities = optional(list(string))
      urgency    = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.slack_connections : (
        length(v.config) >= 1
      )
    ])
    error_message = "Each config list must contain at least 1 items"
  }
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

