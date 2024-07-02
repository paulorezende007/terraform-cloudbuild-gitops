
/*====
File with providers
====*/

terraform {

  required_version = ">= 1.2"

  backend "gcs" {
    bucket = "bucket-terraform-state-qinetwork"          # Bucket default para terraform state qi network
    prefix = "terraform-state/prj-iac-pipelines.tfstate" # Coloque aqui o nome de seu projeto/state que deve ser unico
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.0, < 5.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = ">= 4.0, < 5.0"
    }
  }

}

provider "google" {
  project = var.project_id
  region  = var.region
}

provider "google-beta" {
  project = var.project_id
  region  = var.region
}