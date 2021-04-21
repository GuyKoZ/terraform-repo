provider "github" {
  token = "0b235588e88305b58fe63dca7a24d412cc4a8be4"
}

resource "github_repository" "example" {
  name        = "terraform-repo"
  visibility  = "private"
}