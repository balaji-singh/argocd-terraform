resource "kubernetes_manifest" "application" {
  for_each = var.applications

  manifest = {
    apiVersion = "argoproj.io/v1alpha1"
    kind       = "Application"
    metadata = {
      name      = each.key
      namespace = var.argocd_namespace

    }
    spec = {
      project = each.value.project
      source = {
        repoURL        = each.value.repo_url
        targetRevision = each.value.target_revision
        path           = each.value.path
      }
      destination = {
        server    = each.value.destination_server
        namespace = each.value.destination_namespace
      }
      syncPolicy = {
        automated = {
          prune       = each.value.sync_prune
          selfHeal    = each.value.sync_self_heal
        }
        syncOptions = [
          "CreateNamespace=true"
        ]
      }
    }
  }
}