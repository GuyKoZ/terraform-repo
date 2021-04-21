terraform {
  required_version = "> 0.12.0"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.5.0"
    }
    github = {
      source = "integrations/github"
      version = "4.5.0"
    }
  }
}
provider "google" {

  credentials = file("marine-lodge-304913-7a4b859be9c8.json")
  project = "marine-lodge-304913"
  region  = "us-central1"
  zone    = "us-central1-a"
}
module "sql-db" {
  source  = "GoogleCloudPlatform/sql-db/google//modules/postgresql"
  database_version = "4.5.0"
  name = "guy-db"
  zone    = "us-central1-a"
  project_id = "marine-lodge-304913"
}
resource "google_compute_network" "vpc_network" {
  name = "terraform-network1"
  provisioner "remote-exec" {
    inline = [
      "sudo google-linux-extras install -y nginx1.12",
      "sudo systemctl start linux"
    ]
    connection {
     type = "ssh"
     host = "34.67.81.197"
     user = "instance-user"
     private_key = "/home/guykozli/terraform-course/rsa_private.pem"
    }
  }
}
