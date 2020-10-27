data "terraform_remote_state" "resource_group" {
  count = var.rspath_resource_group != "" ? 1 : 0
  backend = "local"

  config = {
    path = "${var.rspath_resource_group}/terraform.tfstate"
  }
}

data "azurerm_resource_group" "this" {
  count = var.resource_group_name != "" ? 1 : 0
  name = var.resource_group_name
}





