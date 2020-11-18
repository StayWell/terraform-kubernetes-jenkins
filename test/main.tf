module "this" {
  source             = "../"
  storage_class_name = kubernetes_persistent_volume.this.spec[0].storage_class_name
}

resource "kubernetes_storage_class" "this" {
  metadata {
    name = "jenkins"
  }

  storage_provisioner = "kubernetes.io/no-provisioner"
  reclaim_policy      = "Retain"
}
