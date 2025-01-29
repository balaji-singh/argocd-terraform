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

variable "service_type" {
  description = "Service type for ArgoCD server"
  type        = string
  default     = "ClusterIP"
}

variable "ingress_enabled" {
  description = "Enable ingress for ArgoCD server"
  type        = bool
  default     = false
}

variable "ingress_hosts" {
  description = "Ingress hosts for ArgoCD server"
  type        = list(string)
  default     = []
}

variable "ingress_tls" {
  description = "TLS configuration for ingress"
  type        = list(map(string))
  default     = []
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

variable "dex_enabled" {
  description = "Enable Dex authentication"
  type        = bool
  default     = false
}

variable "notifications_enabled" {
  description = "Enable notifications"
  type        = bool
  default     = false
}
variable "ha_enabled" {
  description = "Enable HA mode"
  type        = bool
  default     = false
}
variable "admin_password" {
  description = "Admin password for ArgoCD"
  type        = string
  default     = "password"
}
variable "server_secretkey" {
  description = "Secret key for ArgoCD server"
  type        = string
  default     = "secretkey"
}