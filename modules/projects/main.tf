resource "mongodbatlas_project" "this" {
  count	= var.project_name != null ? 1 : 0

  name				= var.project_name
  org_id			= var.org_id
  project_owner_id		= try(var.project_owner_id, null)
  with_default_alerts_settings	= coalesce(var.with_default_alerts_settings, true)

  dynamic teams {
    for_each = var.teams
    content {
      team_id    = teams.value.team_id
      role_names = teams.value.role_names
    }
  }

  dynamic api_keys {
    for_each = var.api_keys
    content {
      api_key_id = api_keys.value.api_key_id
      role_names = api_keys.value.role_names
    }
  }
}