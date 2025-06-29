# This is the main entrypoint for your Terraform configuration. It uses the `aks-nginx` module to create the AKS cluster and NGINX Ingress.

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.name
  location = var.location
  tags     = var.tags
}

module "aks_nginx" {
  source = "modules/aks-nginx"

  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  cluster_name        = var.name
  tags                = var.tags
}