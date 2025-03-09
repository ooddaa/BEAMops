terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.41.0"
    }
  }
}

locals {
  repository_name = "BEAMops-2"
  github_owner = "ooddaa"
}

provider "github" {
  owner = local.github_owner
}

resource "github_repository" "BEAMops-2" {
  name = local.repository_name
  description = "Devops for BEEEEEEEEAM, bim bim bimops, beam beam beamops"
  visibility = "private"
  has_issues = true
  auto_init = true
  gitignore_template = "Terraform"
  delete_branch_on_merge = true
}

resource "github_repository_milestone" "epics" {
  repository = local.repository_name
  owner = local.github_owner
  title = "Infrastructure"
  description = "Dockerfile, provisoning GCP, local env"
  due_date = "2025-03-23"
}
