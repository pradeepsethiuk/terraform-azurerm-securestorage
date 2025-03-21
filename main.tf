terraform {
  required_version = ">=1.3.7"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.43.0"
    }
  }
  /*
  cloud {

    organization = "pradeepsethi"

    workspaces {
      name = "TerraformCI"
    }
  }
  */
}

locals {
  tags = {
    "Environment" = var.environment
  }
}

resource "azurerm_storage_account" "securestorage" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = var.environment == "Production" ? "GRS" : "LRS"
  tags                     = local.tags

}