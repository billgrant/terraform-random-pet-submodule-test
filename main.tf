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

resource "random_pet" "main" {}

