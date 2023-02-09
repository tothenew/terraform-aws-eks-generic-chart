module "generic_chart" {
  source                  = "../../"
  helm_chart_name         = "prometheus-node-exporter"
  helm_chart_release_name = "prometheus-node-exporter"
  helm_chart_version      = "4.13.0"
  helm_chart_repo         = "https://prometheus-community.github.io/helm-charts"
  namespace               = "kube-system"
}
