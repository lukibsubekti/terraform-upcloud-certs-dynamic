# Terraform - UpCloud - Certs Dynamic


## About
A Terraform module for creating dynamic certificate that is attached to a load balancer in UpCloud.
This allows the frontend of the load balancer to handle secure connection like HTTPS.


## Requirements
- Terraform version `>= 1.6.0`
- UpCloud Provider version `>= 5.25.0`



```hcl
terraform {
  required_version = ">= 1.6.0"

  required_providers {
    upcloud = {
      source  = "UpCloudLtd/upcloud"
      version = ">= 5.25.0"
    }
  }
}

provider "upcloud" {
  username = var.upcloud_username
  password = var.upcloud_password
}

module "certs" {
  source = "lukibsubekti/certs-dynamic/upcloud"
  version = "1.0.1"

  name = "main-certs"
  hostnames = [ "dev.website.com", "stag.website.com", "website.com" ]
  frontend_id = "xxxxxx"
}
```

## License

MIT License. See LICENSE for full details.