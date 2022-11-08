module "vault-injector-helm" {
  source        = "../../"
  vault_values  = "./vault-eks.hcl.tfpl"
  vault_addr    = "some-external-addr"
  vault_version = "v1.12.0"
}
