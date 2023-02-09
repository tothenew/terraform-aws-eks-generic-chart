module "generic_chart" {
  source                  = "../../"
  helm_chart_name         = "metrics-server"
  helm_chart_release_name = "metrics-server"
  helm_chart_version      = "3.8.3"
  helm_chart_repo         = "https://kubernetes-sigs.github.io/metrics-server/"
  namespace               = "kube-system"
}
