# resource "google_compute_instance_template" "default" {
#   name    = var.name
#   project = var.project_id
#   region  = var.region

#   machine_type = "custom-${var.vcpu_count}-${var.memory_mb}"

#   dynamic "network_interface" {
#     for_each = var.network_interfaces
#     content {
#       network    = network_interface.value.network
#       subnetwork = network_interface.value.subnetwork
#     }
#   }

#   disk {
#     source_image = "ubuntu-os-cloud/ubuntu-2004-lts"
#   }
# }
