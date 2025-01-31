output "argocd_namespace" {
  description = "Namespace where ArgoCD is installed"
  value       = module.argocd.namespace
}

output "argocd_server_service" {
  description = "ArgoCD server service details"
  value       = module.argocd.server_service
  sensitive   = true
}
output "helm_release_name" {
  description = "Name of the ArgoCD Helm release"
  value       = module.argocd.helm_release_name
}