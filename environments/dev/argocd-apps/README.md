<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | ~> 2.11.0 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | ~> 2.23.0 |
| <a name="requirement_null"></a> [null](#requirement\_null) | ~> 3.2.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_null"></a> [null](#provider\_null) | 3.2.3 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_applications"></a> [applications](#module\_applications) | ../modules/applications | n/a |

## Resources

| Name | Type |
|------|------|
| [null_resource.wait_for_crds](https://registry.terraform.io/providers/hashicorp/null/latest/docs/resources/resource) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_applications"></a> [applications](#input\_applications) | Map of applications to create | <pre>map(object({<br/>    project               = string<br/>    repo_url              = string<br/>    target_revision       = string<br/>    path                  = string<br/>    destination_server    = string<br/>    destination_namespace = string<br/>    sync_prune            = bool<br/>    sync_self_heal        = bool<br/>  }))</pre> | `{}` | no |
| <a name="input_argocd_namespace"></a> [argocd\_namespace](#input\_argocd\_namespace) | Namespace for ArgoCD installation | `string` | `"argocd"` | no |
| <a name="input_argocd_version"></a> [argocd\_version](#input\_argocd\_version) | Version of ArgoCD Helm chart | `string` | `"5.46.7"` | no |
| <a name="input_helm_release_name"></a> [helm\_release\_name](#input\_helm\_release\_name) | Name of the ArgoCD Helm release to depend on | `string` | n/a | yes |
| <a name="input_kubeconfig_path"></a> [kubeconfig\_path](#input\_kubeconfig\_path) | Path to kubeconfig file | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_applications"></a> [applications](#output\_applications) | Created applications |
<!-- END_TF_DOCS -->