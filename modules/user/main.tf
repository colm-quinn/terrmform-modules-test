# Create a Database Password
resource "random_password" "db-user-password" {
  length = 16
  special = true
  override_special = "_%@"
}

# Create a Database User
resource "mongodbatlas_database_user" "db-user" {
  username = var.user-name
  password = random_password.db-user-password.result
  project_id = var.project_id
  auth_database_name = var.user-name
  roles {
    role_name     = var.user-role
    database_name = "${var.project_id}-db"
  }
}