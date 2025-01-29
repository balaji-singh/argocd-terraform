output "server_url" {
  description = "URL of the ArgoCD server"
  value       = "https://${helm_release.argocd.name}-server"
}