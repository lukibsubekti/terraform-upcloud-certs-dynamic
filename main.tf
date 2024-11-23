
resource "upcloud_loadbalancer_dynamic_certificate_bundle" "main" {
  name = var.name
  key_type = var.key_type
  hostnames = var.hostnames
}

resource "upcloud_loadbalancer_frontend_tls_config" "main" {
  name               = var.name
  frontend           = var.frontend_id
  certificate_bundle = upcloud_loadbalancer_dynamic_certificate_bundle.main.id
}