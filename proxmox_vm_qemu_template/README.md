<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 2.7.4 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 2.7.4 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.template](https://registry.terraform.io/providers/telmate/proxmox/2.7.4/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_balloon"></a> [balloon](#input\_balloon) | The minimum amount of memory to allocate to the VM in Megabytes, when Automatic Memory Allocation is desired. Proxmox will enable a balloon device on the guest to manage dynamic allocation. | `number` | `512` | no |
| <a name="input_ciuser"></a> [ciuser](#input\_ciuser) | Set the default cloud-init user for provisioning. | `string` | n/a | yes |
| <a name="input_cores"></a> [cores](#input\_cores) | The number of CPU cores per CPU socket to allocate to the VM. | `number` | `2` | no |
| <a name="input_default_gateway"></a> [default\_gateway](#input\_default\_gateway) | The default gateway to use for the primary network interface | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | The description of the VM. Shows as the 'Notes' field in the Proxmox GUI. | `string` | n/a | yes |
| <a name="input_enable_agent"></a> [enable\_agent](#input\_enable\_agent) | Set to 1 to enable the QEMU Guest Agent. Note, you must run the qemu-guest-agent daemon in the quest for this to have any effect. | `number` | `1` | no |
| <a name="input_ip_address"></a> [ip\_address](#input\_ip\_address) | The IP address if the primary network interface | `string` | n/a | yes |
| <a name="input_memory"></a> [memory](#input\_memory) | The amount of memory to allocate to the VM in Megabytes. | `number` | `2048` | no |
| <a name="input_name"></a> [name](#input\_name) | The name of the VM within Proxmox. | `string` | n/a | yes |
| <a name="input_root_disk_size"></a> [root\_disk\_size](#input\_root\_disk\_size) | The size of the root disk, format must match the regex \d+[GMK], where G, M, and K represent Gigabytes, Megabytes, and Kilobytes respectively. | `string` | `"30G"` | no |
| <a name="input_root_disk_storage"></a> [root\_disk\_storage](#input\_root\_disk\_storage) | The name of the storage pool on which to store the disk. | `string` | n/a | yes |
| <a name="input_ssh_keys"></a> [ssh\_keys](#input\_ssh\_keys) | A list of SSH public keys to add to authorized keys file for the cloud-init user. | `list(any)` | n/a | yes |
| <a name="input_target_node"></a> [target\_node](#input\_target\_node) | The name of the Proxmox Node on which to place the VM. | `string` | n/a | yes |
| <a name="input_template_name"></a> [template\_name](#input\_template\_name) | The Proxmox template to clone | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
