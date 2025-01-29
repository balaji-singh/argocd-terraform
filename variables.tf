variable "cluster_name" {
  description = "Name of the Kubernetes cluster"
  type        = string
}

variable "argocd_namespace" {
  description = "Namespace where ArgoCD will be installed"
  type        = string
  default     = "argocd"
}