variable "kubeconfig_path" {
  description = "Path to kubeconfig file"
  type        = string
}

variable "argocd_namespace" {
  description = "Namespace for ArgoCD installation"
  type        = string
  default     = "argocd"
}

variable "argocd_version" {
  description = "Version of ArgoCD Helm chart"
  type        = string
  default     = "5.46.7"
}

variable "helm_release_name" {
  description = "Name of the ArgoCD Helm release to depend on"
  type        = string
}

variable "applications" {
  description = "Map of applications to create"
  type = map(object({
    project               = string
    repo_url              = string
    target_revision       = string
    path                  = string
    destination_server    = string
    destination_namespace = string
    sync_prune            = bool
    sync_self_heal        = bool
  }))
  default = {}
}
