variable "rgs" {
  description = "Resource groups"
  type = map(object({
    name       = string
    location   = string
    managed_by = string
    tags       = map(string)
  }))
}

variable "vnetworks" {
  description = "Virtual networks"
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    address_space       = list(string)
  }))
}

