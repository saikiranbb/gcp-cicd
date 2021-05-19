provider "google" {
  version = "~> 3.3.0"
}

provider "null" {
  version = "~> 2.1"
}

locals {
  subnet_01 = "${var.prefix}app-subnet-01"
  subnet_02 = "${var.prefix}db-subnet-02"

}

module "vpc-secondary-ranges" {
  source       = "terraform-google-modules/network/google"
  version      = "~> 2.0.0"
  project_id   = var.project_id
  network_name = "${var.prefix}vpc"

  subnets = [
    {
      subnet_name           = "${local.subnet_01}"
      subnet_ip             = "10.168.0.0/20"
      subnet_region         = "us-east1"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    },
    {
      subnet_name           = "${local.subnet_02}"
      subnet_ip             = "10.150.0.0/20"
      subnet_region         = "us-east1"
      subnet_private_access = "true"
      subnet_flow_logs      = "true"
    }
  ]

  secondary_ranges = {
    "${local.subnet_01}" = [
      {
        range_name    = "${local.subnet_01}-pod"
        ip_cidr_range = "10.48.0.0/14"
      },
      {
        range_name    = "${local.subnet_01}-service"
        ip_cidr_range = "10.52.0.0/20"
      },
    ]
  }
}
