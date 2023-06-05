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

module "external1" {
  source = "github.com/billgrant/terraform-random-pet-external-submod-test"
}

module "external2" {
  source = "app.terraform.io/billgrant/pet-external-submod-test/random"
}

resource "random_pet" "main" {}

