output "name" {
  description = "Name of the resource group."
  value       = var.rspath_resource_group != "" ? data.terraform_remote_state.resource_group.0.outputs.name : data.azurerm_resource_group.this.0.name
}

output "id" {
  description = "Id of the resource group."
    value       = var.rspath_resource_group != "" ? data.terraform_remote_state.resource_group.0.outputs.id : data.azurerm_resource_group.this.0.id
}

output "tags" {
  description = "Tags of the resource group."
    value       = var.rspath_resource_group != "" ? data.terraform_remote_state.resource_group.0.outputs.tags : data.azurerm_resource_group.this.0.tags
}
