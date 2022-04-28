terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.19.0"
    }
  }
}

provider "google" {
  project = "searce-playground-v1"
  region  = "asia-south1"
  zone    = "asia-south1-c"
}

resource "google_compute_instance" "test-instance" {
  name         = "test-instance10"
  machine_type = "e2-medium"
  project = "searce-playground-v1"


  # scheduling {
  #   on_host_maintenance = var.on_host_maintenance
  # }
    boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = "test77"
    subnetwork = "test77-subnet-1"

    access_config {
      // Ephemeral public IP
    }

  }
}


