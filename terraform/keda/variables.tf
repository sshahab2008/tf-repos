variable "kubeconfig_path" {
  description = "Path to the kubeconfig file to use."
  type        = string
  default     = "~/.kube/config"
}

variable "kubernetes_context" {
  description = "Optional kubeconfig context to use. If null, the current context is used."
  type        = string
  default     = null
}

variable "keda_namespace" {
  description = "Namespace where KEDA will be installed."
  type        = string
  default     = "keda"
}

variable "keda_release_name" {
  description = "Helm release name for KEDA."
  type        = string
  default     = "keda"
}

variable "keda_chart_repository" {
  description = "Helm repository URL for the KEDA chart."
  type        = string
  default     = "https://kedacore.github.io/charts"
}

variable "keda_chart_name" {
  description = "KEDA Helm chart name."
  type        = string
  default     = "keda"
}

variable "keda_chart_version" {
  description = "Optional KEDA Helm chart version to install. Example: 2.14.2. Leave null to install the latest."
  type        = string
  default     = null
}