terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.69.0"
    }
  }
}

provider "yandex" {
  service_account_key_file = var.service_account_key
  cloud_id                 = var.cloud_id
  folder_id                = var.folder_id
  zone                     = var.zone
}


resource "yandex_compute_instance" "gitlab" {
  name                = "gitlab"
  zone                =  var.zone

  resources {
    core_fraction     = 100
    cores             = 2
    memory            = 4
  }

  boot_disk {
    initialize_params {
      image_id = var.ubuntu_id
      size = 50
    }
  }

  network_interface {
    subnet_id = var.subnet_id
    nat = true
  }

  metadata = {
    ssh-keys = "ubuntu:${file(var.public_key_path_file)}"
  }

}
