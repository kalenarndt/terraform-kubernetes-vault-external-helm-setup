output "vault_k8s_namespace" {
  value       = kubernetes_namespace.vault.id
  description = "Namespace that was created for Vault to use"
}

output "vault_svc_account_name" {
  value = one(data.kubernetes_service_account.vault.metadata.*.name)
}
