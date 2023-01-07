


provider "yandex" {
  cloud_id                 = "b1g3fp293td4qlu7fhng"
  folder_id                = "b1g7vd4ojartjghot9q4"
  zone                     = "ru-central1-a"
  service_account_key_file = yandex_iam_service_account_key.key
}

resource "yandex_vpc_network" "lab-net" {
  name = "lab-network"
}

