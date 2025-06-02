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
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDbSex48HfkdXuqTvwK3QTIWOrt6Ag9fWt26Z0WFoyn6cexV+mPG+ne7/jyBkEWI9AG/j7G+epzHwnkpbxO0bR20xl4YXrfSTvPb2mKI5tMZUfisO7H3kfCsllgeJL0t/vRe22rMpb7oC6ayBHI2OZ6qJ3vsC4qq2ej3d8n41SQrKD48I/4mGymYC4pLow7o4G7/oa//6F6AHNWrJQig7mz6eJ07b+T7i8AW1+CupwA01gGNQTf8kltRrXd5NAapZkDfzMSpMeG4BJfx3V++P6chD/YEO5PsRr+VAwDkxugFzhv7rW6jVMD0iANfrbfR4Xw/iXO4O+qgd/F7NXgkyWQAdv0epXisDYuQItqd5+sQA3OceaDMlMH0sW5JyHJTebvGGVW86LhTanBS/PWvw05XdxwlTS5kT3pmrr6j85uXwIBMw1udvJT30I0Sv0MP/CGHlyMb97mUioWhSoX2Izda8n+HC3ohuroIVOXat4Zzi3hW8L87IF54AEJSEr8X4SUy5JSE01JHLLQ4fbzG6OBMSpDBZsQDdaOhKCajvhKTOT8TpXt/GJ2vhvA/AXH18uoVXwld4aFefgrEc5dbpZ3ndPoCwcPs4qRasjeGlbX0wI6PrSU0RyXNwRsvofxsks8qbEiT0/USzQ2t4fg8eBoUJN7HssRc4dT23z5uqtS6w=="
}

variable "cloud_id" {
  description = "Cloud ID"
  type = string
}

variable "folder_id" {
  description = "Folder ID"
  type = string
}