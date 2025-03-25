terraform {
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~> 4.0"
    }
  }
  required_version = ">= 1.0"
}

data "tls_public_key" "ssh_key" {
  private_key_pem = file(var.ssh_private_key_path)
}

resource "null_resource" "vps_setup" {
  depends_on = [data.tls_public_key.ssh_key]

  provisioner "local-exec" {
    command = "bash ./setup_vps.sh ${var.vps_ip} ${var.ssh_user} ${var.ssh_private_key_path} '${data.tls_public_key.ssh_key.public_key_openssh}' ${var.root_password}"
  }
}

output "server_ip" {
  value = var.vps_ip
}
