module "argocd" {
  source = "../modules/argocd"

  namespace             = var.argocd_namespace
  argocd_version        = var.argocd_version
  service_type          = var.service_type
  ingress_enabled       = var.ingress_enabled
  ingress_hosts         = var.ingress_hosts
  ingress_tls           = var.ingress_tls
  dex_enabled           = var.dex_enabled
  notifications_enabled = var.notifications_enabled
  ha_enabled            = var.ha_enabled
  admin_password        = var.admin_password
  server_secretkey      = var.server_secretkey
}