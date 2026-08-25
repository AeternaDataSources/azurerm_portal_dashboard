variable "portal_dashboard_lookup" {
  description = <<EOT
Map of portal_dashboard_lookup, attributes below
Required:
    - resource_group_name
Optional:
    - dashboard_properties
    - display_name
    - name
EOT

  type = map(object({
    resource_group_name  = string
    dashboard_properties = optional(string)
    display_name         = optional(string)
    name                 = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboard_lookup : (
        v.name == null || (length(v.name) <= 160)
      )
    ])
    error_message = "[from validate.DashboardName: invalid when len(value) > 160]"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboard_lookup : (
        v.display_name == null || (length(v.display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboard_lookup : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboard_lookup : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.portal_dashboard_lookup : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

