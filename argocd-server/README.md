<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.11.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.23.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.2.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_argocd"></a> [argocd](#module\_argocd) | ../modules/argocd | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | Admin password for ArgoCD | `string` | `"password"` | no |
| <a name="input_applications"></a> [applications](#input\_applications) | Map of applications to create | <pre>map(object({<br/>    project               = string<br/>    repo_url              = string<br/>    target_revision       = string<br/>    path                  = string<br/>    destination_server    = string<br/>    destination_namespace = string<br/>    sync_prune            = bool<br/>    sync_self_heal        = bool<br/>  }))</pre> | `{}` | no |
| <a name="input_argocd_namespace"></a> [argocd\_namespace](#input\_argocd\_namespace) | Namespace for ArgoCD installation | `string` | `"argocd"` | no |
| <a name="input_argocd_version"></a> [argocd\_version](#input\_argocd\_version) | Version of ArgoCD Helm chart | `string` | `"5.46.7"` | no |
| <a name="input_dex_enabled"></a> [dex\_enabled](#input\_dex\_enabled) | Enable Dex authentication | `bool` | `false` | no |
| <a name="input_ha_enabled"></a> [ha\_enabled](#input\_ha\_enabled) | Enable HA mode | `bool` | `false` | no |
| <a name="input_ingress_enabled"></a> [ingress\_enabled](#input\_ingress\_enabled) | Enable ingress for ArgoCD server | `bool` | `false` | no |
| <a name="input_ingress_hosts"></a> [ingress\_hosts](#input\_ingress\_hosts) | Ingress hosts for ArgoCD server | `list(string)` | `[]` | no |
| <a name="input_ingress_tls"></a> [ingress\_tls](#input\_ingress\_tls) | TLS configuration for ingress | `list(map(string))` | `[]` | no |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Path to kubeconfig file | `string` | n/a | yes |
| <a name="input_notifications_enabled"></a> [notifications\_enabled](#input\_notifications\_enabled) | Enable notifications | `bool` | `false` | no |
| <a name="input_server_secretkey"></a> [server\_secretkey](#input\_server\_secretkey) | Secret key for ArgoCD server | `string` | `"secretkey"` | no |
| <a name="input_service_type"></a> [service\_type](#input\_service\_type) | Service type for ArgoCD server | `string` | `"ClusterIP"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_argocd_namespace"></a> [argocd\_namespace](#output\_argocd\_namespace) | Namespace where ArgoCD is installed |
| <a name="output_argocd_server_service"></a> [argocd\_server\_service](#output\_argocd\_server\_service) | ArgoCD server service details |
| <a name="output_helm_release_name"></a> [helm\_release\_name](#output\_helm\_release\_name) | Name of the ArgoCD Helm release |
<!-- END_TF_DOCS -->