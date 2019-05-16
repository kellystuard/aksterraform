resource "random_pet" "environment" {
}

variable "environment" {
  type        = "string"
  description = "Name of environment. Used to tag resources."
  default     = ""
}

variable "subnet" {
  type        = "string"
  description = "Subnet of environment. Used to partition out the address space. Use a /16 space."
  default     = "15.0.0.0/16"
}

variable "nodeCount" {
  type        = "string"
  description = "Number of Kubernetes nodes to spin up."
  default     = 2
}

variable "prefix" {
  description = "A prefix used for all resources in this example"
}

variable "location" {
  description = "The Azure Region in which all resources in this example should be provisioned"
}

variable "kubernetes_client_id" {
  description = "The Client ID for the Service Principal to use for this Managed Kubernetes Cluster"
}

variable "kubernetes_client_secret" {
  description = "The Client Secret for the Service Principal to use for this Managed Kubernetes Cluster"
}

locals {
  environment = "${var.environment == "" ? random_pet.environment.id : var.environment}"
}
