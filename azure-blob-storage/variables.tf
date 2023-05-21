variable "resource_group_name" {
  type    = string
  default = "my-resource-group"
}

variable "resource_group_location" {
  type    = string
  default = "westeurope"
}

variable "storage_account_name" {
  type    = string
  default = "my-storage-account"
}

variable "storage_account_tier" {
  type    = string
  default = "Standard"
}

variable "storage_account_replication_type" {
  type    = string
  default = "LRS"
}

variable "storage_container_name" {
  type    = string
  default = "my-storage-container"
}

variable "storage_blob_name" {
  type    = string
  default = "my-storage-blob"
}

variable "storage_blob_source" {
  type    = string
  default = "path/to/file"
}
