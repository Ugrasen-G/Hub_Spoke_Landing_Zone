variable "vnetworks" {
  description = "Virtual networks"
  type        = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

resource "azurerm_virtual_network" "vnet" {
  for_each = var.vnetworks
  name                = each.value.name
  location            = each.value.location
  resource_group_name = each.value.resource_group_name
  address_space       = each.value.address_space
}