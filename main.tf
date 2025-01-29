module "argocd" {
  source = "./modules/argocd"

  argocd_namespace = var.argocd_namespace
}

module "applications" {
  source = "./modules/applications"

  depends_on = [module.argocd]
}