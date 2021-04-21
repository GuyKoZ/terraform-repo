#provider "google" {
#  project     = "marine-lodge-304913"
#  region      = "us-central1"
#  zone        = "us-central1-a"
#}
#resource "google_compute_instance" "vm_instance" {
#  name = "guy-personal"
#  machine_type = "e2-medium"
#}
#boot_dist {
#  initialize_params{
#    image = "centos-7-v20210217"
#  }
#}
#network_interface {
#  netwrok = "${google}"
#}
 # parent       = "projects/${google_project.project.number}"
 # restrictions = ["resourcemanager.projects.delete"]
 # origin       = "machine-readable-explanation"
 # reason       = "This project is an important environment"
#}