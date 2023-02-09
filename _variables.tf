variable "helm_chart_name" {
  type        = string
  description = "Generic Helm chart name to be installed."
}

variable "helm_chart_release_name" {
  type        = string
  description = "Helm release name."
}

variable "helm_chart_version" {
  type        = string
  description = "Generic Helm chart version."
}

variable "helm_chart_repo" {
  type        = string
  description = "Generic repository name."
}

variable "create_namespace" {
  type        = bool
  default     = true
  description = "Whether to create Kubernetes namespace with name defined by `namespace`."
}

variable "namespace" {
  type        = string
  default     = "kube-system"
  description = "Kubernetes namespace to deploy Generic Helm chart."
}

variable "mod_dependency" {
  default     = null
  description = "Dependence variable binds all AWS resources allocated by this module, dependent modules reference this variable."
}

variable "settings" {
  default     = {}
  description = "Additional settings which will be passed to the Helm chart values."
}