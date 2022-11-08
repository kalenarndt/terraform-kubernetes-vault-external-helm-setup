terraform {
  required_version = ">=1.3.0"
  required_providers {
    helm = {
      source  = "hashicorp/helm"
      version = ">=2.5.1"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">=2.13.1"
    }
  }
}
