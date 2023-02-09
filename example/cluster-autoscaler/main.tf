module "generic_chart" {
  source                  = "../../"
  helm_chart_name         = "aws-cluster-autoscaler"
  helm_chart_release_name = "cluster-autoscaler"
  helm_chart_version      = "9.23.0"
  helm_chart_repo         = "https://kubernetes.github.io/autoscaler"
  namespace               = "kube-system"
  settings = {
    "autoDiscovery.clusterName" : "my-eks-cluster"
  }
}
