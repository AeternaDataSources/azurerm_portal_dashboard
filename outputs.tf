output "portal_dashboard_lookup_id" {
  description = "Map of id values across all portal_dashboard_lookup, keyed the same as var.portal_dashboard_lookup"
  value       = { for k, v in data.azurerm_portal_dashboard.portal_dashboard_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "portal_dashboard_lookup_dashboard_properties" {
  description = "Map of dashboard_properties values across all portal_dashboard_lookup, keyed the same as var.portal_dashboard_lookup"
  value       = { for k, v in data.azurerm_portal_dashboard.portal_dashboard_lookup : k => v.dashboard_properties if v.dashboard_properties != null && length(v.dashboard_properties) > 0 }
}
output "portal_dashboard_lookup_display_name" {
  description = "Map of display_name values across all portal_dashboard_lookup, keyed the same as var.portal_dashboard_lookup"
  value       = { for k, v in data.azurerm_portal_dashboard.portal_dashboard_lookup : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "portal_dashboard_lookup_location" {
  description = "Map of location values across all portal_dashboard_lookup, keyed the same as var.portal_dashboard_lookup"
  value       = { for k, v in data.azurerm_portal_dashboard.portal_dashboard_lookup : k => v.location if v.location != null && length(v.location) > 0 }
}
output "portal_dashboard_lookup_name" {
  description = "Map of name values across all portal_dashboard_lookup, keyed the same as var.portal_dashboard_lookup"
  value       = { for k, v in data.azurerm_portal_dashboard.portal_dashboard_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}
output "portal_dashboard_lookup_resource_group_name" {
  description = "Map of resource_group_name values across all portal_dashboard_lookup, keyed the same as var.portal_dashboard_lookup"
  value       = { for k, v in data.azurerm_portal_dashboard.portal_dashboard_lookup : k => v.resource_group_name if v.resource_group_name != null && length(v.resource_group_name) > 0 }
}
output "portal_dashboard_lookup_tags" {
  description = "Map of tags values across all portal_dashboard_lookup, keyed the same as var.portal_dashboard_lookup"
  value       = { for k, v in data.azurerm_portal_dashboard.portal_dashboard_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

