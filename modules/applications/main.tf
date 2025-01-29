resource "kubernetes_manifest" "application" {
  for_each = var.applications

  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = each.key
      namespace = "argocd"
    }
    spec = each.value
  }
}