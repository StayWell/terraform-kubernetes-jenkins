module "this" {
  source             = "../"
  storage_class_name = kubernetes_storage_class.this.spec[0].name
}

resource "kubernetes_storage_class" "this" {
  metadata {
    name = "jenkins"
  }

  storage_provisioner = "kubernetes.io/no-provisioner"
  reclaim_policy      = "Retain"
}
