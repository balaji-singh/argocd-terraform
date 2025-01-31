kubeconfig_path       = "~/.kube/config"
argocd_namespace      = "argocd"
helm_release_name = "argocd"
applications = {
  "guestbook" = {
    project               = "default"
    repo_url              = "https://github.com/argoproj/argocd-example-apps.git"
    target_revision       = "HEAD"
    path                  = "guestbook"
    destination_server    = "https://kubernetes.default.svc"
    destination_namespace = "guestbook"
    sync_prune            = true
    sync_self_heal        = true
  }
}