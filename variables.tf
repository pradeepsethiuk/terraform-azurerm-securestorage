variable "resource_group_name" {
  type        = string
  description = "Resource Group Name"
}

variable "storage_account_name" {
  type        = string
  description = "The Storage Account Name"
}

variable "environment" {
  type        = string
  description = "The environment either Production or Development"
}

variable "location" {
  type        = string
  description = "The Resource Location"
}