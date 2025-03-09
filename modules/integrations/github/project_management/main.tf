terraform {
  required_providers {
    github = {
      source = "integrations/github"
      version = "5.41.0"
    }
  }
}

locals {
  repository_name = "kanban"
  github_owner = "ooddaa"
}

provider "github" {
  owner = local.github_owner
}

resource "github_repository" "kanban" {
  name = local.repository_name
  description = "BEAMOps sandbox"
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
  description = "Dockerfile, provisoning AWS, local env, base AMI with Packer"
  due_date = "2025-01-23"
}

resource "github_repository" "lol" {
  name = "lol"  
  description = "test"
  visibility = "private"
  has_issues = true
  auto_init = true
  gitignore_template = "Elixir"
  delete_branch_on_merge = true
}

