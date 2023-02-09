module "generic_chart" {
  source                  = "../../"
  helm_chart_name         = "aws-load-balancer-controller"
  helm_chart_release_name = "aws-load-balancer-controller"
  helm_chart_version      = "1.4.7"
  helm_chart_repo         = "https://aws.github.io/eks-charts"
  namespace               = "kube-system"
  settings = {
    "clusterName" : "my-eks-cluster"
    "serviceAccount.create" : false
    "serviceAccount.name" : "aws-load-balancer-controller"
  }
}
