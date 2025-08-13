provider "kubernetes" {
  config_path    = var.kubeconfig_path
  config_context = var.kubeconfig_context
}

provider "helm" {
  kubernetes {
    config_path    = var.kubeconfig_path
    config_context = var.kubeconfig_context
  }
}

locals {
  keda_values_yaml = length(var.keda_values) > 0 ? [yamlencode(var.keda_values)] : []
}