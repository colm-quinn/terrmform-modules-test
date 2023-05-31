output "project_id" {
    value = one(mongodbatlas_project.this).id
    description	= "ID of the created Atlas project"
}