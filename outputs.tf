output "rg_id" {
  description = "ID of the resource group"
  value       = azurerm_resource_group.rgdetails.id
}

output "sa_blob_endpoint" {
  description = "Primary blob endpoint of the storage account"
  value       = azurerm_storage_account.sadetails.primary_blob_endpoint
}

output "vnet_id" {
  description = "ID of the virtual network"
  value       = azurerm_virtual_network.vnetdetails.id
}
