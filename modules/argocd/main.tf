resource "kubernetes_namespace" "argocd" {
  metadata {
    name = var.namespace
    labels = {
      "app.kubernetes.io/managed-by" = "terraform"
    }
  }
}

resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = var.argocd_version
  namespace  = kubernetes_namespace.argocd.metadata[0].name

  values = [
    yamlencode({
      server = {
        extraArgs = ["--insecure"]
        service = {
          type = var.service_type
        }
        ingress = {
          enabled = var.ingress_enabled
          hosts   = var.ingress_hosts
          tls     = var.ingress_tls
        }
      }
      dex = {
        enabled = var.dex_enabled
      }
      notifications = {
        enabled = var.notifications_enabled
      }
      ha = {
        enabled = var.ha_enabled
      }
    })
  ]
}