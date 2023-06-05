terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

module "nestedmod" {
  source = "./modules/nestedmod"
}

resource "random_pet" "main" {}

