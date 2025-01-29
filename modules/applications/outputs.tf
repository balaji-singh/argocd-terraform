output "application_names" {
  description = "Names of the deployed applications"
  value       = keys(kubernetes_manifest.application)
}

output "applications" {
  description = "Details of the deployed applications"
  value       = kubernetes_manifest.application
}