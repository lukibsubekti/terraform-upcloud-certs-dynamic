variable "name" {
  type = string
  description = "Certificate bundle name"
}

variable "frontend_id" {
  type = string
  description = "ID of the load balancer frontend"
}

variable "hostnames" {
  type = list(string)
  description = "List of domains in the bundle"
  default = []
}

variable "key_type" {
  type = string
  description = "Type of encryption algorithm. 'rsa' or 'ecdsa'"
  default = "rsa"
}