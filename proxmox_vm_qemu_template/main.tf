resource "proxmox_vm_qemu" "template" {
  name        = var.name
  target_node = var.target_node
  clone       = var.template_name
  bootdisk    = "virtio0"
  memory      = var.memory
  agent       = var.enable_agent
  balloon     = var.balloon
  cores       = var.cores
  desc        = var.description
  sshkeys     = join("\n", var.ssh_keys)
  disk {
    size    = var.root_disk_size
    type    = "virtio"
    discard = "on"
    format  = "raw"
    storage = var.root_disk_storage
  }
  ipconfig0 = "gw=${var.default_gateway},ip=${var.ip_address}"
  lifecycle {
    ignore_changes = [
      network
    ]
  }
}
