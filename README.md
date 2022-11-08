# terraform-kubernetes-vault-external-helm-setup

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >=2.5.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >=2.13.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.7.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.15.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.vault](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
| [kubernetes_namespace.vault](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/namespace) | resource |
| [kubernetes_service_account.vault](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/data-sources/service_account) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_helm_chart_name"></a> [helm\_chart\_name](#input\_helm\_chart\_name) | (Optional) Name of the Helm chart to install. Defaults to vault | `string` | `"vault"` | no |
| <a name="input_helm_chart_repository"></a> [helm\_chart\_repository](#input\_helm\_chart\_repository) | (Optional) URL for the HashiCorp Helm Chart Repository. Defaults to helm.releases.hashicorp.com | `string` | `"https://helm.releases.hashicorp.com"` | no |
| <a name="input_helm_chart_version"></a> [helm\_chart\_version](#input\_helm\_chart\_version) | (Optional) Version of the Vault Helm chart to install | `string` | `"v0.22.1"` | no |
| <a name="input_helm_release_name"></a> [helm\_release\_name](#input\_helm\_release\_name) | (Optional) Name of the release that will be deployed. Defaults to vault | `string` | `"vault"` | no |
| <a name="input_vault_addr"></a> [vault\_addr](#input\_vault\_addr) | (Required) Private (or Public) URL for the Vault cluster. Private should be leveraged unless you don't have reachability | `string` | n/a | yes |
| <a name="input_vault_namespace"></a> [vault\_namespace](#input\_vault\_namespace) | (Optional) Namespace where Vault will be deployed. This will be created as a part of the run and used by Helm. Defaults to vault | `string` | `"vault"` | no |
| <a name="input_vault_values"></a> [vault\_values](#input\_vault\_values) | (Required) Path where the Helm values file is located for vault. Example: ./values/vault-values.yaml | `string` | n/a | yes |
| <a name="input_vault_version"></a> [vault\_version](#input\_vault\_version) | (Required) Version of the Vault agent to deploy. Should be denoted as vx.xx.x | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vault_k8s_namespace"></a> [vault\_k8s\_namespace](#output\_vault\_k8s\_namespace) | Namespace that was created for Vault to use. |
| <a name="output_vault_svc_account_name"></a> [vault\_svc\_account\_name](#output\_vault\_svc\_account\_name) | Service account that was created via Helm for Vault to use. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
