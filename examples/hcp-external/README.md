# hcp-external

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.3.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >=2.5.1 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | >=2.13.1 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_vault-injector-helm"></a> [vault-injector-helm](#module\_vault-injector-helm) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vault_k8s_namespace"></a> [vault\_k8s\_namespace](#output\_vault\_k8s\_namespace) | Namespace that was created for Vault to use. |
| <a name="output_vault_svc_account_name"></a> [vault\_svc\_account\_name](#output\_vault\_svc\_account\_name) | Service account that was created via Helm for Vault to use. |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
