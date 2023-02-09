resource "kubernetes_namespace" "generic" {
  depends_on = [var.mod_dependency]
  count      = (var.create_namespace && var.namespace != "kube-system") ? 1 : 0

  metadata {
    name = var.namespace
  }
}
