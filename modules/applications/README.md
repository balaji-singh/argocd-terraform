<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_manifest.application](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_applications"></a> [applications](#input\_applications) | Map of applications to create | <pre>map(object({<br/>    project               = string<br/>    repo_url             = string<br/>    target_revision      = string<br/>    path                 = string<br/>    destination_server   = string<br/>    destination_namespace = string<br/>    sync_prune          = bool<br/>    sync_self_heal      = bool<br/>  }))</pre> | n/a | yes |
| <a name="input_argocd_namespace"></a> [argocd\_namespace](#input\_argocd\_namespace) | ArgoCD namespace | `string` | n/a | yes |
| <a name="input_helm_release_name"></a> [helm\_release\_name](#input\_helm\_release\_name) | Name of the ArgoCD Helm release to depend on | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_application_names"></a> [application\_names](#output\_application\_names) | Names of the deployed applications |
| <a name="output_applications"></a> [applications](#output\_applications) | Details of the deployed applications |
<!-- END_TF_DOCS -->