output "vault_k8s_namespace" {
  value       = module.vault-injector-helm.vault_k8s_namespace
  description = "Namespace that was created for Vault to use."
}

output "vault_svc_account_name" {
  value       = module.vault-injector-helm.vault_svc_account_name
  description = "Service account that was created via Helm for Vault to use."
}
