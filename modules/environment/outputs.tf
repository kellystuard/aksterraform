output "resource_group" {
  value = "${azurerm_resource_group.k8s.name}"
}

output "aks_name" {
  value = "${azurerm_kubernetes_cluster.k8s_ingress.name}"
}

output "public_host" {
  value = "${azurerm_public_ip.k8s.fqdn}"
}

output "k8s-ingress" {
  value     = "${azurerm_kubernetes_cluster.k8s_ingress.kube_config_raw}"
  sensitive = true
}

output "host" {
  value = "${azurerm_kubernetes_cluster.k8s_ingress.kube_config.0.host}"
}

output "id" {
  value = "${azurerm_kubernetes_cluster.example.id}"
}

output "kube_config" {
  value = "${azurerm_kubernetes_cluster.example.kube_config_raw}"
}

output "client_key" {
  value = "${azurerm_kubernetes_cluster.example.kube_config.0.client_key}"
}

output "client_certificate" {
  value = "${azurerm_kubernetes_cluster.example.kube_config.0.client_certificate}"
}

output "cluster_ca_certificate" {
  value = "${azurerm_kubernetes_cluster.example.kube_config.0.cluster_ca_certificate}"
}

output "host" {
  value = "${azurerm_kubernetes_cluster.example.kube_config.0.host}"
}
