resource "azurerm_resource_group" "ifejesu-rg" {
  name = var.resource_group_name
  location = var.location
}



resource "azurerm_kubernetes_cluster" "aks" {
  name = var.cluster_name
  location = var.location
  kubernetes_version = var.Kubernetes_version
  resource_group_name = azurerm_resource_group.ifejesu-rg.name
  dns_prefix = var.cluster_name
  

  default_node_pool {
    name = "system"
    node_count = var.system_node_count
    vm_size = "standard_d2_v3"
    type = "VirtualMachineScaleSets"
    
  }

  identity {
    type = "SystemAssigned"
  }

  network_profile {
    load_balancer_sku = "standard"
    network_plugin = "kubenet"
  }

  
}



