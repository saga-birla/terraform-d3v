locals { // dynamic possiblities in tfvars
  instance_networks = [
    [
      module.VPCs[0].vpc_self_link,
      module.VPCs[1].vpc_self_link,
      module.VPCs[2].vpc_self_link
    ]
  ]

  instance_subnetworks = [
    [
      module.subnets[0].subnet_self_link,
      module.subnets[1].subnet_self_link,
      module.subnets[2].subnet_self_link
    ]
  ]
}

module "instances" {
  count         = var.instance_count
  source        = "./modules/instance"
  region        = var.regions[count.index]
  instance_name = var.instance_names[count.index]
  zone          = var.zones[count.index]
  # network        = module.VPCs[count.index].vpc_self_link
  # subnetwork     = module.subnets[count.index].subnet_self_link
  # networks       = var.instance_networks[count.index]
  # subnetworks    = var.instance_subnetworks[count.index]
  networks       = local.instance_networks[count.index]
  subnetworks    = local.instance_subnetworks[count.index]
  machine_type   = var.machine_types[count.index]
  image          = var.images[count.index]
  boot_disk_size = var.boot_disk_sizes[count.index]
}

module "VPCs" {
  count    = var.vpc_count
  source   = "./modules/vpc"
  vpc_name = var.vpc_name[count.index]
}

module "subnets" {
  count                = var.subnet_count
  source               = "./modules/subnets"
  subnet_name          = var.subnet_names[count.index]
  subnet_ip_cidr_range = var.subnet_ip_cidr_ranges[count.index]
  region               = var.subnet_regions[count.index]
  # vpc_network          = module.VPCs[count.index].vpc_self_link
  vpc_network = module.VPCs[var.subnet_vpc_mapping[count.index]].vpc_self_link
}













# module "mig_with_static_ip" {
#   source = "./modules/mig-instance-group"

#   project_id     = var.project_id
#   region         = var.region
#   zone           = var.zone
#   static_ip_name = var.static_ip_name

#   network_nic0 = var.network_nic0
#   subnet_nic0  = var.subnet_nic0

#   network_nic1 = var.network_nic1
#   subnet_nic1  = var.subnet_nic1

#   network_nic2 = var.network_nic2
#   subnet_nic2  = var.subnet_nic2
# }
