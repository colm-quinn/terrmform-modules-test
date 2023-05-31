module "project_test" {
  source = "./modules/projects"

  project_name = var.project_name
  org_id			= var.org_id
  project_owner_id		= try(var.project_owner_id, null)
  with_default_alerts_settings	= coalesce(var.with_default_alerts_settings, true)
  api_keys = var.api_keys
  teams = var.teams
}

module "user_create" {
  source = "./modules/user"
  user-name = var.user-name
  user-role = var.user-role
  project_id = "${module.project_test.project_id}"
}
