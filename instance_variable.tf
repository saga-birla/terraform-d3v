variable "instance_count" {
  description = "The number of instances to create"
  type        = number
}

variable "regions" {
  description = "The region where the instances will be created"
  type        = list(string)
}

variable "instance_names" {
  description = "A list of instance names"
  type        = list(string)
}

variable "zones" {
  description = "A list of zones where the instances will be created"
  type        = list(string)
}

variable "machine_types" {
  description = "A list of machine types for the instances"
  type        = list(string)
}

variable "images" {
  description = "A list of images to use for the instances"
  type        = list(string)
}

variable "boot_disk_sizes" {
  description = "A list of boot disk sizes for the instances"
  type        = list(string)
}

# variable "instance_networks" {
#   description = "List of lists of network self links for each instance (one list per instance)"
#   type        = list(list(string))
# }

# variable "instance_subnetworks" {
#   description = "List of lists of subnetwork self links for each instance (one list per instance)"
#   type        = list(list(string))
# }
