resource "google_compute_instance" "instance_name" {
  name         = var.instance_name
  machine_type = var.machine_type
  zone         = var.zone

  boot_disk {
    initialize_params {
      image = var.image
      size  = var.boot_disk_size
    }
  }

  dynamic "network_interface" {
    for_each = zipmap(var.networks, var.subnetworks)
    content {
      network    = network_interface.key
      subnetwork = network_interface.value
      access_config {}
    }
  }
}
