provider "google" {
  project = "phonic-raceway-284216"
  region  = "europe-west3"
  zone    = "europe-west3c"
}

resource "google_storage_bucket" "terraform" {
  name          = "carrio-tf-state"
}

terraform {
  backend "gcs" {
    bucket  = "carrio-tf-state"
    prefix  = "terraform/state"
  }
}