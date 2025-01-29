<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.argocd](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.argocd](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | Admin password for ArgoCD | `string` | n/a | yes |
| <a name="input_argocd_version"></a> [argocd\_version](#input\_argocd\_version) | Version of ArgoCD Helm chart | `string` | `"5.46.7"` | no |
| <a name="input_dex_enabled"></a> [dex\_enabled](#input\_dex\_enabled) | Enable Dex for SSO | `bool` | `false` | no |
| <a name="input_ha_enabled"></a> [ha\_enabled](#input\_ha\_enabled) | Enable high availability | `bool` | `false` | no |
| <a name="input_ingress_enabled"></a> [ingress\_enabled](#input\_ingress\_enabled) | Enable ingress for ArgoCD server | `bool` | `false` | no |
| <a name="input_ingress_hosts"></a> [ingress\_hosts](#input\_ingress\_hosts) | Ingress hosts for ArgoCD server | `list(string)` | `[]` | no |
| <a name="input_ingress_tls"></a> [ingress\_tls](#input\_ingress\_tls) | TLS configuration for ingress | `list(map(string))` | `[]` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for ArgoCD installation | `string` | `"argocd"` | no |
| <a name="input_notifications_enabled"></a> [notifications\_enabled](#input\_notifications\_enabled) | Enable notifications | `bool` | `false` | no |
| <a name="input_server_secretkey"></a> [server\_secretkey](#input\_server\_secretkey) | Server secret key | `string` | n/a | yes |
| <a name="input_service_type"></a> [service\_type](#input\_service\_type) | Service type for ArgoCD server | `string` | `"ClusterIP"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_helm_release_name"></a> [helm\_release\_name](#output\_helm\_release\_name) | Name of the ArgoCD Helm release |
| <a name="output_namespace"></a> [namespace](#output\_namespace) | The namespace where ArgoCD is installed |
| <a name="output_server_service"></a> [server\_service](#output\_server\_service) | The service for the ArgoCD server |
| <a name="output_server_url"></a> [server\_url](#output\_server\_url) | URL of the ArgoCD server |
<!-- END_TF_DOCS -->