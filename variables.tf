variable "vault_namespace" {
  type        = string
  description = "(Optional) Namespace where Vault will be deployed. This will be created as a part of the run and used by Helm. Defaults to vault"
  default     = "vault"
}

variable "vault_values" {
  type        = string
  description = "(Required) Path where the Helm values file is located for vault. Example: ./values/vault-values.yaml"
}

variable "vault_version" {
  type        = string
  description = "(Required) Version of the Vault agent to deploy. Should be denoted as vx.xx.x"
}

variable "vault_addr" {
  type        = string
  description = "(Required) Private (or Public) URL for the Vault cluster. Private should be leveraged unless you don't have reachability"
}

variable "helm_release_name" {
  type        = string
  description = "(Optional) Name of the release that will be deployed. Defaults to vault"
  default     = "vault"
}

variable "helm_chart_version" {
  type        = string
  description = "(Optional) Version of the Vault Helm chart to install"
  default     = "v0.22.1"
}

variable "helm_chart_repository" {
  type        = string
  description = "(Optional) URL for the HashiCorp Helm Chart Repository. Defaults to helm.releases.hashicorp.com"
  default     = "https://helm.releases.hashicorp.com"
}

variable "helm_chart_name" {
  type        = string
  description = "(Optional) Name of the Helm chart to install. Defaults to vault"
  default     = "vault"
}
