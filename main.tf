
resource "helm_release" "rancher" {
  name       = "rancher"
  namespace  = "dev"
  repository = "https://releases.rancher.com/server-charts/latest"
  chart      = "rancher"
  timeout    = 6000
  set {
    name  = "hostname"
    value = "sai22.eastus.cloudapp.azure.com"
  }

  set {
    name  = "replicas"
    value = "3"
  }

  set {
    name  = "tls.source"
    value = "letsEncrypt"
  }
  set {
    name  = "letsEncrypt.email"
    value = "me@example.org"
  }
  set {
    name  = "letsEncrypt.ingress.class"
    value = "nginx"
  }

}
