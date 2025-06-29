variable "cluster_name" {
  description = "The name for the AKS cluster."
  type        = string
}

variable "location" {
  description = "The Azure region where to deploy the cluster."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the resources."
  type        = map(string)
  default     = {}
}