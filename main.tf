resource "kubernetes_namespace" "vault" {
  metadata {
    labels = {
      "application" = var.vault_namespace
    }
    name = var.vault_namespace
  }
}

resource "helm_release" "vault" {
  name       = var.helm_release_name
  repository = var.helm_chart_repository
  chart      = var.helm_chart_name
  version    = var.helm_chart_version
  namespace  = kubernetes_namespace.vault.id
  values = [templatefile("${path.cwd}/${var.vault_values}", {
    VAULT_ADDR    = var.vault_addr
    VAULT_VERSION = trimprefix(var.vault_version, "v")
  })]
}

data "kubernetes_service_account" "vault" {
  depends_on = [helm_release.vault]
  metadata {
    name      = var.helm_chart_name
    namespace = kubernetes_namespace.vault.id
  }
}
