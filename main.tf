
provider "google" {
  project = "EksamenSky"
  credentials = "creds.json"
}

resource "google_cloud_run_v2_service" "default" {
  name     = "LegacyEksamen"
  location = "europe-west2"
  client   = "terraform"

  template {
    containers {
      image = "docker.pkg.dev/cloudrun/container/hello:latest"
    }
  }
}