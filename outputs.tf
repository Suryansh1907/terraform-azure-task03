output "rg_id" {
  description = "The ID of the Azure Resource Group"
  value       = azurerm_resource_group.rg.id
}

output "sa_blob_endpoint" {
  description = "The primary endpoint of the blob service for the Storage Account"
  value       = azurerm_storage_account.sa.primary_blob_endpoint
}

output "vnet_id" {
  description = "The ID of the Azure Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}
