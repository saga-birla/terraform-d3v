# output "instance_name" {
#   value = google_compute_instance.instance.name
# }

output "instance_self_link" {
  value = google_compute_instance.instance_name.self_link
}
