output "state" {
  value = upcloud_loadbalancer_dynamic_certificate_bundle.main.operational_state
  description = "Operational state of the certificate"
}

output "valid_from" {
  value = upcloud_loadbalancer_dynamic_certificate_bundle.main.not_before
  description = "Certificate valid from"
}

output "valid_until" {
  value = upcloud_loadbalancer_dynamic_certificate_bundle.main.not_after
  description = "Certificate valid until"
}

output "id" {
  value = upcloud_loadbalancer_dynamic_certificate_bundle.main.id
  description = "ID of the certificate bundle"
}