output "keda_namespace" {
  description = "Namespace where KEDA is deployed"
  value       = helm_release.keda.namespace
}

output "keda_chart_version" {
  description = "Installed KEDA chart version"
  value       = helm_release.keda.version
}