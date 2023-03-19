terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.61.0"
    }

  }

}

provider "yandex" {

}


resource "yandex_vpc_network" "network" {
  name = "network"
}

resource "yandex_vpc_subnet" "subnet1" {
  name           = "subnet1"
#  count 	 = "3"
  zone           = "ru-central1-b"
  network_id     = yandex_vpc_network.network.id
  v4_cidr_blocks = ["192.168.10.0/24"]
}

module "ya_instance_1" {
  source                = "./modules"
  number                  = "./modules"
  instance_family_image = "ubuntu-2004-lts"
  vpc_subnet_id         = yandex_vpc_subnet.subnet1.id
}




