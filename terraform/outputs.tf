output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

output "aks_cluster_name" {
  value = module.aks_nginx.cluster_name
}

output "kube_config" {
  value     = module.aks_nginx.kube_config
  sensitive = true
}