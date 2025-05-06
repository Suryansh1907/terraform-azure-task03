variable "subscription_id" {
  type        = string
  description = "Azure subscription ID"
}

variable "client_id" {
  type        = string
  description = "Azure client ID"
}

variable "client_secret" {
  type        = string
  description = "Azure client secret"
}

variable "tenant_id" {
  type        = string
  description = "Azure tenant ID"
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "storage_account_name" {
  type        = string
  description = "Name of the storage account"
}

variable "vnet_name" {
  type        = string
  description = "Name of the virtual network"
}

variable "frontend_subnet_name" {
  type        = string
  description = "Name of the frontend subnet"
}

variable "backend_subnet_name" {
  type        = string
  description = "Name of the backend subnet"
}

variable "address_space" {
  type        = list(string)
  description = "Address space for the virtual network"
}

variable "frontend_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the frontend subnet"
}

variable "backend_subnet_prefix" {
  type        = list(string)
  description = "Address prefix for the backend subnet"
}
