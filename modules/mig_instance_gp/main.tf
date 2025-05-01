# data "google_compute_address" "static_ip" {
#   name   = "my-static-ip"
#   region = var.region
# }

# resource "google_compute_instance_template" "mig_template" {
#   name_prefix  = "multi-nic-template"
#   machine_type = "n2-standard-4"

#   network_interface {
#     network    = var.network_nic0
#     subnetwork = var.subnet_nic0
#     access_config {
#       nat_ip = data.google_compute_address.static_ip.address
#     }
#   }

#   network_interface {
#     network    = var.network_nic1
#     subnetwork = var.subnet_nic1
#     # No external IP
#   }

#   network_interface {
#     network    = var.network_nic2
#     subnetwork = var.subnet_nic2
#     # No external IP
#   }

#   disk {
#     boot         = true
#     auto_delete  = true
#     source_image = "projects/debian-cloud/global/images/family/debian-11"
#   }

#   tags = ["mig-instance"]
# }

# resource "google_compute_instance_group_manager" "mig" {
#   name               = "multi-nic-mig"
#   base_instance_name = "multi-nic-instance"
#   target_size        = 3

#   version {
#     instance_template = google_compute_instance_template.mig_template.id
#   }

#   named_port {
#     name = "http"
#     port = 80
#   }
# }
