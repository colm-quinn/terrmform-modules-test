terraform {
  required_version = ">=1.4.6"
  required_providers {
    mongodbatlas = {
      source = "mongodb/mongodbatlas"
      version = "~>1.9.0"
    }
    random = {
      source = "hashicorp/random"
      version = "~>3.5.1"
    }
  }
}
