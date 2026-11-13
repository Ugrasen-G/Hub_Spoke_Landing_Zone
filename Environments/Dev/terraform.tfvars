rgs = {
  rg1 = {
    name       = "hub-rg1"
    location   = "East US"
    managed_by = "Terraform"
    tags = {
      environment = "dev"
    }
  }
  rg2 = {
    name       = "spoke-rg1"
    location   = "East US"
    managed_by = "Terraform"
    tags = {
      environment = "dev"
    }
  }
}

vnetworks = {
  vnet1 = {
    name                = "hub-vnet1"
    location            = "East US"
    resource_group_name = "hub-rg1"
    address_space       = ["10.1.0.0/16"]
  }
  vnet2 = {
    name                = "spoke-vnet1"
    location            = "East US"
    resource_group_name = "spoke-rg1"
    address_space       = ["10.2.0.0./16"]
  }
}
