variable "location" {
  description = "Location of Azure resources."
  type        = string
}

variable "vnet_configs" {
  description = "Virtual network configurations."
  type        = object({ name = string, address_space = set(string) })
}
