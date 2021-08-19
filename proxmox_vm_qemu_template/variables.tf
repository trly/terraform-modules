variable "name" {
  description = "The name of the VM within Proxmox."
  type        = string
}

variable "description" {
  description = "The description of the VM. Shows as the 'Notes' field in the Proxmox GUI."
  type        = string
}

variable "target_node" {
  description = "The name of the Proxmox Node on which to place the VM."
  type        = string
}

variable "memory" {
  description = "The amount of memory to allocate to the VM in Megabytes."
  type        = number
  default     = 2048
}

variable "template_name" {
  description = "The Proxmox template to clone"
  type        = string
}

variable "enable_agent" {
  description = "Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the quest for this to have any effect."
  type        = number
  default     = 1
}

variable "balloon" {
  description = "The minimum amount of memory to allocate to the VM in Megabytes, when Automatic Memory Allocation is desired. Proxmox will enable a balloon device on the guest to manage dynamic allocation."
  type        = number
  default     = 512
}

variable "cores" {
  description = "The number of CPU cores per CPU socket to allocate to the VM."
  type        = number
  default     = 2
}

variable "ssh_keys" {
  description = "A list of SSH public keys to add to authorized keys file for the cloud-init user."
  type        = list(any)
}

variable "root_disk_size" {
  description = "The size of the root disk, format must match the regex \\d+[GMK], where G, M, and K represent Gigabytes, Megabytes, and Kilobytes respectively."
  type        = string
  default     = "30G"
}

variable "root_disk_storage" {
  description = "The name of the storage pool on which to store the disk."
  type        = string
}

variable "default_gateway" {
  description = "The default gateway to use for the primary network interface"
  type        = string
}

variable "ip_address" {
  description = "The IP address if the primary network interface"
  type        = string
}
