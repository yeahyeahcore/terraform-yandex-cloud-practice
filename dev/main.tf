


resource "yandex_vpc_network" "lab-net" {
  name = "lab-network"
}

resource "yandex_vpc_subnet" "default-ru-central1-c" {
  name           = "default-ru-central1-c"
  v4_cidr_blocks = ["10.130.0.0/24"]
  zone           = "ru-central1-c"
  network_id     = yandex_vpc_network.lab-net.id
}
