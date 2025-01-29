kubeconfig_path       = "~/.kube/config"
argocd_namespace      = "argocd"
service_type          = "LoadBalancer"
ingress_enabled       = true
ingress_hosts         = ["argocd.example.com"]
dex_enabled           = true
notifications_enabled = true
ha_enabled            = true
admin_password        = "password"
server_secretkey      = "secretkey"

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