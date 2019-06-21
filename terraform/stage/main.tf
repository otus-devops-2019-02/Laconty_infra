terraform {
  # terraform version
  required_version = ">=0.11,<0.12"
}

provider "google" {
  # provider v  ersion
  version = "2.0.0"

  # project id
  # project = "infra-242718"
  project = "${var.project}"

  # region = "europe-west-1"
  region = "${var.region}"
}

module "app" {
  source          = "../modules/app"
  public_key_path = "${var.public_key_path}"
  zone            = "${var.zone}"
  app_disk_image  = "${var.app_disk_image}"
}

module "db" {
  source          = "../modules/db"
  public_key_path = "${var.public_key_path}"
  zone            = "${var.zone}"
  db_disk_image   = "${var.db_disk_image}"
}

module "vpc" {
  source = "../modules/vpc"

  # source_ranges = ["80.250.215.124/32"]
}
