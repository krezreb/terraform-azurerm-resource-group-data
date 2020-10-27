output "name" {
  description = "Name of the resource group."
  value       = var.rspath_resource_group != "" ? data.terraform_remote_state.resource_group.outputs.name : data.azurerm_resource_group.this.name
}

output "id" {
  description = "Id of the resource group."
    value       = var.rspath_resource_group != "" ? data.terraform_remote_state.resource_group.outputs.id : data.azurerm_resource_group.this.id
}

output "tags" {
  description = "Tags of the resource group."
    value       = var.rspath_resource_group != "" ? data.terraform_remote_state.resource_group.outputs.tags : data.azurerm_resource_group.this.tags
}
