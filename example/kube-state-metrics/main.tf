module "generic_chart" {
  source                  = "../../"
  helm_chart_name         = "kube-state-metrics"
  helm_chart_release_name = "kube-state-metrics"
  helm_chart_version      = "4.29.0"
  helm_chart_repo         = "https://prometheus-community.github.io/helm-charts"
  namespace               = "kube-system"
}
