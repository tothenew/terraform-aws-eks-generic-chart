module "generic_chart" {
  source                  = "../../"
  helm_chart_name         = "aws-node-termination-handler"
  helm_chart_release_name = "aws-node-termination-handler"
  helm_chart_version      = "0.21.0"
  helm_chart_repo         = "https://aws.github.io/eks-charts"
  namespace               = "kube-system"
}
