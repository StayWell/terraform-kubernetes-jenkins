module "this" {
  source             = "../"
  storage_class_name = "jenkins"
}

resource "kubernetes_storage_class" "this" {
  metadata {
    name = "jenkins"
  }

  storage_provisioner = "kubernetes.io/no-provisioner"
  reclaim_policy      = "Retain"
}
