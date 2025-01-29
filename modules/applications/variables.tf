variable "argocd_namespace" {
  description = "ArgoCD namespace"
  type        = string
}

variable "applications" {
  description = "Map of applications to create"
  type = map(object({
    project               = string
    repo_url             = string
    target_revision      = string
    path                 = string
    destination_server   = string
    destination_namespace = string
    sync_prune          = bool
    sync_self_heal      = bool
  }))
}

variable "helm_release_name" {
  description = "Name of the ArgoCD Helm release to depend on"
  type        = string
}
