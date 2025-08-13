variable "kubeconfig_path" {
  description = "Path to the kubeconfig file."
  type        = string
  default     = "~/.kube/config"
}

variable "kubeconfig_context" {
  description = "Optional kubeconfig context to use."
  type        = string
  default     = null
}

variable "keda_namespace" {
  description = "Namespace to deploy KEDA into."
  type        = string
  default     = "keda"
}

variable "keda_chart_version" {
  description = "KEDA Helm chart version to install. If null, the latest is used."
  type        = string
  default     = null
}

variable "keda_values" {
  description = "Additional Helm values for the KEDA chart (as a Terraform map)."
  type        = any
  default     = {}
}