resource "gitlab_project" "sample_project" {
  name = var.project_name
}

resource "gitlab_project_hook" "sample_project_hook" {
  project = gitlab_project.sample_project.id
  url     = "https://example.com/project_hook"
}

resource "gitlab_project_variable" "sample_project_variable" {
project = gitlab_project.sample_project.id
  key     = "project_variable_key"
  value   = "project_variable_value"
}

resource "gitlab_deploy_key" "sample_deploy_key" {
  project = gitlab_project.sample_project.id
  key     = var.gitlab_ssh
  title = var.project_name
}

data "gitlab_group" "sample_group" {
  full_path = var.full_path
}

resource "gitlab_project" "sample_group_project" {
  name         = var.project_name
  namespace_id = data.gitlab_group.sample_group.id
}
