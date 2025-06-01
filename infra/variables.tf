# Настройки сети
variable "vpc_name" {
  description = "VPC Name"
  type = string
  default = "infra-network"
}

variable "net_cidr" {
  description = "Subnet structure"
  type = list(object({
    name = string,
    zone = string,
    prefix = string
  }))

  default = [
    { name = "infra-subnet-a", zone = "ru-central1-a", prefix = "10.129.1.0/24" },
    { name = "infra-subnet-b", zone = "ru-central1-b", prefix = "10.130.1.0/24" },
    { name = "infra-subnet-d", zone = "ru-central1-d", prefix = "10.131.1.0/24" },
  ]
}

# Настройки виртуальной машины
variable "image_family" {
  default = "ubuntu-2204-lts"
}

variable "vm_1_name" {
  type = string
  default = "vm-kittygram"
}

variable "zone" {
  default = "ru-central1-a"
}

variable "platform_id" {
  default = "standard-v2"
}

variable "cores" {
  default = 2
}

variable "memory" {
  default = 4
}

variable "disk_type" {
  default = "network-ssd"
}

variable "disk_size" {
  default = 20
}

variable "nat" {
  default = true
}

variable "ssh_key" {
  description = "SSH Public Key"
  type = string
}

variable "aws_region" {
  description = "AWS Region name"
  type = string
}

variable "cloud_id" {
  description = "Cloud ID"
  type = string
}

variable "folder_id" {
  description = "Folder ID"
  type = string
}