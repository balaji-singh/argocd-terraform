output "argocd_namespace" {
  description = "Namespace where ArgoCD is installed"
  value       = module.argocd.namespace
}

output "argocd_server_service" {
  description = "ArgoCD server service details"
  value       = module.argocd.server_service
}

output "applications" {
  description = "Created applications"
  value       = module.applications.applications
}