resource "google_compute_instance" "docker-host" {

  name         = "docker-host-${count.index+1}"
  count        = var.instance_count
  machine_type = "g1-small"
  zone         = var.zone
  boot_disk {
    initialize_params { image = var.app_disk_image }
  }
  network_interface {
    network = "default"
    access_config {
    }
  }

  metadata = {
    ssh-keys = "appuser:${file(var.public_key_path)}"
  }
}
