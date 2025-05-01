credentials_file = "omi-birla-4ff3672d12d3.json"
project          = "omi-birla"
region           = "us-central1"
zone             = "us-central1-c"

##### vpc #####
vpc_count = 4
vpc_name  = ["test-vpc-1", "test-vpc-2", "test-vpc-3", "test-vpc-4"]

##### subnet #####                                                                //if possible make the only one region default for all
subnet_count       = 12
subnet_vpc_mapping = [0, 1, 2, 3, 0, 1, 2, 3, 0, 1, 2, 3] // automate this
subnet_names = ["test-subnet-1", "test-subnet-2", "test-subnet-3", "test-subnet-4",
  "test-subnet-5", "test-subnet-6", "test-subnet-7", "test-subnet-8",
"test-subnet-9", "test-subnet-10", "test-subnet-11", "test-subnet-12"]

subnet_ip_cidr_ranges = ["10.1.0.0/16", "10.2.0.0/16", "10.3.0.0/16", "10.4.0.0/16",
  "10.5.0.0/16", "10.6.0.0/16", "10.7.0.0/16", "10.8.0.0/16",
"10.9.0.0/16", "10.10.0.0/16", "10.11.0.0/16", "10.12.0.0/16"]

subnet_regions = ["us-central1", "us-central1", "us-central1", "us-central1",
  "us-central1", "us-central1", "us-central1", "us-central1",
"us-central1", "us-central1", "us-central1", "us-central1"]


#### instance #####
instance_count  = 1
regions         = ["us-central1"]
instance_names  = ["pre-prod-instance-1"]
zones           = ["us-central1-c"]
machine_types   = ["n1-standard-4"]
images          = ["centos-stream-9"]
boot_disk_sizes = [20]





# project_id     = "your-gcp-project-id"
# region         = "us-central1"
# zone           = "us-central1-a"
# static_ip_name = "my-static-ip"

# network_nic0 = "default"
# subnet_nic0  = "default-subnet"

# network_nic1 = "custom-network-1"
# subnet_nic1  = "custom-subnet-1"

# network_nic2 = "custom-network-2"
# subnet_nic2  = "custom-subnet-2"
