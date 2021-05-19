variable "service_account" {
  type = object({
    email  = string
    scopes = set(string)
  })
  default = {
     email =""
     scopes = ["userinfo-email", "compute-ro", "storage-ro"]
}
  description = "Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account."
}
