output "server_url" {
  description = "URL of the ArgoCD server"
  value       = "https://${helm_release.argocd.name}-server"
}

output "namespace" {
  description = "The namespace where ArgoCD is installed"
  value       = kubernetes_namespace.argocd.metadata[0].name
}

output "server_service" {
  description = "The service for the ArgoCD server"
  value       = helm_release.argocd
}
output "helm_release_name" {
  description = "Name of the ArgoCD Helm release"
  value       = helm_release.argocd.name
}