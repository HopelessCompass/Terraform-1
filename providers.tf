terraform {
  required_providers {
    gitlab = {
      source = "gitlabhq/gitlab"
      version = "16.3.0"
    }
  }
}

provider "gitlab" {
    token = var.gitlab_token
    base_url = var.url
}
