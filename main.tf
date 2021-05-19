

module "vpc" {
    source  = "github.com/terraform-google-modules/terraform-google-network"

    project_id   = "jenkins-314106"
    network_name = "jenkins-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet1"
            subnet_ip             = "10.10.10.0/24"
            subnet_region         = "us-west1"
        },
        {
            subnet_name           = "subnet2"
            subnet_ip             = "10.10.20.0/24"
            subnet_region         = "us-west1"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This subnet has a description"
        }
]
}
