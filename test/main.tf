module "this" {
  source             = "../"
  storage_class_name = "jenkins"
  wait_until_bound   = false
  wait_for_rollout   = false
}

resource "kubernetes_storage_class" "this" {
  metadata {
    name = "jenkins"
  }

  storage_provisioner = "kubernetes.io/no-provisioner"
  reclaim_policy      = "Retain"
}
