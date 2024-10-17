variable "resource_group_name" {
    type = string
    description = "RG name"
}

variable "location" {
    type = string
    description = "Resource location"
}

variable "cluster_name" {
    type = string
    description = "Azure Kubernetes service name"
}

variable "Kubernetes_version" {
    type = string
    description = "Kubernetes_version"
}

variable "system_node_count" {
    type = number
    description = "Number of worker nodes"
}