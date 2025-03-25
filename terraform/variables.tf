variable "vps_ip" {
  type        = string
  description = "The IP address of your VPS"
}

variable "ssh_user" {
  type        = string
  default     = "root"
  description = "The SSH user to connect to the VPS"
}

variable "ssh_private_key_path" {
  type        = string
  description = "The path to your SSH private key"
  default     = "~/.ssh/id_rsa"
}

variable "root_password" {
  type        = string
  description = "The root password for your VPS"
  sensitive   = true
}
