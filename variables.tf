variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

variable "resource_group_name" {
  default = "cmaz-eh8dj90z-mod3-rg"
}

variable "storage_account_name" {
  default = "cmazeh8dj90zsa"
}

variable "vnet_name" {
  default = "cmaz-eh8dj90z-mod3-vnet"
}

variable "location" {
  default = "East US"
}

variable "tags" {
  default = {
    Creator = "suryansh_tilak@epam.com"
  }
}
