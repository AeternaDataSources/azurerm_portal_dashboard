data "azurerm_portal_dashboard" "portal_dashboard_lookup" {
  for_each = var.portal_dashboard_lookup

  resource_group_name  = each.value.resource_group_name
  dashboard_properties = each.value.dashboard_properties
  display_name         = each.value.display_name
  name                 = each.value.name
}

