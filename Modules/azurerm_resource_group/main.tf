variable "rgs" {
  description = "Resource groups"
  type        = map(object({
    name       = string
    location   = string
    managed_by = string
    tags       = map(string)
  }))
}

resource "azurerm_resource_group" "rg" {
  for_each = var.rgs
  name     = each.value.name
  location = each.value.location
}