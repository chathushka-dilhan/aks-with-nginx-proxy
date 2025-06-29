variable "location" {
  description = "The Azure region to deploy the resources in."
  type        = string
}

variable "name" {
  description = "The name of the resource group and AKS cluster."
  type        = string
}

variable "tags" {
  description = "A map of tags to apply to the resources."
  type        = map(string)
  default     = {}
}