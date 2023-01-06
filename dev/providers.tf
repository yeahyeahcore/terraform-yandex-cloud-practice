terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}

provider "yandex" {
  token     = var.yandex_token
  cloud_id  = "b1g3fp293td4qlu7fhng"
  folder_id = "b1g7vd4ojartjghot9q4"
  zone      = "ru-central1-a"
}
