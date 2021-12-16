output "vm_id" {
  value = azurerm_linux_virtual_machine.linuxvm.id
}

output "vm_ip" {
  value = azurerm_linux_virtual_machine.linuxvm.public_ip_address
}

output "vm_user" {
  value = azurerm_linux_virtual_machine.linuxvm.admin_username
}

# Save SSH key to file
output "private_key_name" {
  value = local_file.test_private_key.filename
}

output "tls_private_key" { 
  value = tls_private_key.ssh_key.private_key_pem
  sensitive = true
}