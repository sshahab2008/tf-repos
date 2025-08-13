resource "helm_release" "keda" {
  name             = var.keda_release_name
  repository       = var.keda_chart_repository
  chart            = var.keda_chart_name
  namespace        = var.keda_namespace
  create_namespace = true
  version          = var.keda_chart_version
}