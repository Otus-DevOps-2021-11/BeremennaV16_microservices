variable "cloud_id" {
  description = "Cloud"
}
variable "folder_id" {
  description = "Folder"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path_file" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
}
variable "subnet_id" {
  description = "Subnet"
}
variable "service_account_key" {
  description = "key .json"
}
variable "private_key" {
  description = "your private ssh key"
}

variable "yandex_vpc_network" {
  description = "id of my vpc_network"
}

variable "ubuntu_id" {
  default = "id of ubuntu iso"
}
