# Atlas Organization ID 
variable "org_id" {
  type        = string
  description = "Atlas Organization ID"
}
# Atlas Project Name
variable "project_name" {
  type        = string
  description = "Atlas Project Name"
}

variable "project_owner_id" {
  type        = string
  description = "The environment to be built"
}

variable "with_default_alerts_settings" {
  type        = bool
  description = "alerts default settings"
}

variable "api_keys" {
  type = map(object({
    api_key_id = string,
    role_names = list(string)
  }))
}

variable "teams" {
  type = map(object({
    team_id = string,
    role_names = list(string)
  }))
}