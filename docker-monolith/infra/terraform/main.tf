terraform {
  # Версия terraform
  required_version = "0.12.19"
}

provider "google" {
  # Версия провайдера
  version = "3.4"

  # ID проекта
  project = var.project
  region  = var.region
}
module "app" {
  source             = "./modules/app"
  public_key_path    = var.public_key_path
  zone               = var.zone
  app_disk_image     = var.app_disk_image
  instance_count     = 1
}

module "vpc" {
  source = "./modules/vpc"
}
