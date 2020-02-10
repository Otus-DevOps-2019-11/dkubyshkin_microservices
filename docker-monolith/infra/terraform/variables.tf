variable "project" {
  description = "Project ID"
  default = "docker-267619"
}

variable "region" {
  description = "Region"
  default     = "europe-west-1"
}

variable "public_key_path" {
  description = "Path to the public key used for ssh access"
  default = "/Users/ruakbdg/.ssh/id_rsa2.pub"
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "docker-host"
}

variable "private_key" {
  description = "Path to the private key used for ssh provisioners"
}

variable "zone" {
  description = "Zone"
  default     = "europe-west1-b"
}

variable instance_count {
  description = "Number of instances"
  default     = "1"
}

variable "location" {
  description = "Bucket location"
  default     = "europe-west1"
}

variable "label_env" {
  description = "GCP label 'env' associating an instance with an environment in which it's being run"
  default     = "stage"
}
