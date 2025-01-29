output "application_names" {
  description = "Names of the deployed applications"
  value       = keys(kubernetes_manifest.application)
}