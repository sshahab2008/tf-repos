resource "helm_release" "keda" {
  name             = "keda"
  repository       = "https://kedacore.github.io/charts"
  chart            = "keda"
  namespace        = var.keda_namespace
  create_namespace = true

  version = var.keda_chart_version

  values = local.keda_values_yaml

  wait              = true
  timeout           = 600
  atomic            = true
  cleanup_on_fail   = true
  dependency_update = true
}