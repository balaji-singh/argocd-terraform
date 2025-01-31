
resource "null_resource" "wait_for_crds" {
  depends_on = [var.helm_release_name]

  provisioner "local-exec" {
    command = <<EOF
      while ! kubectl get crd applications.argoproj.io &>/dev/null; do
        echo "Waiting for ArgoCD CRDs to be installed..."
        sleep 10
      done
    EOF
  }
}

module "applications" {
  source     = "../../../modules/applications"
  depends_on = [null_resource.wait_for_crds]

  argocd_namespace  = var.argocd_namespace
  helm_release_name = var.helm_release_name
  applications      = var.applications
}