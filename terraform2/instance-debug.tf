terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
        }
    }
}
provider "google" {

  credentials = file("marine-lodge-304913-7a4b859be9c8.json")
  project = "marine-lodge-304913"
  region  = "us-central1"
  zone    = "us-central1-a"
}
