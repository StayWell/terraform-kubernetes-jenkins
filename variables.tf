variable "storage_class_name" {
  description = "https://www.terraform.io/docs/providers/kubernetes/r/persistent_volume_claim.html#storage_class_name"
  default     = ""
}

variable "host" {
  description = "https://www.terraform.io/docs/providers/kubernetes/r/ingress.html#host"
  default     = "jenkins"
}

variable "cpu" {
  description = "https://www.terraform.io/docs/providers/kubernetes/r/deployment.html#cpu"
  default     = "500m"
}

variable "memory" {
  description = "https://www.terraform.io/docs/providers/kubernetes/r/deployment.html#memory"
  default     = "1Gi"
}

variable "storage" {
  description = "https://www.terraform.io/docs/providers/kubernetes/r/persistent_volume_claim.html#requests"
  default     = "5Gi"
}

variable "image" {
  description = "https://hub.docker.com/r/jenkins/jenkins/tags"
  default     = "jenkins/jenkins:latest"
}

variable "namespace" {
  description = "Used to generate namespace and name resources"
  default     = "jenkins"
}

variable "web_port" {
  description = "Jenkins web port internal to the Jenkins container"
  default     = "8080"
}

variable "node_port" {
  description = "https://www.terraform.io/docs/providers/kubernetes/r/service.html#node_port"
  type        = number
  default     = null
}

variable "jnlp_port" {
  description = "https://www.jenkins.io/doc/book/managing/security/#tcp-port"
  default     = "50000"
}

variable "ssl_redirect" {
  description = "https://kubernetes.github.io/ingress-nginx/user-guide/tls/#server-side-https-enforcement-through-redirect"
  default     = true
}

variable "wait_until_bound" {
  description = "https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/persistent_volume_claim#wait_until_bound"
  default     = true
}
