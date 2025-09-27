variable "rg_name" {
  description = "Resource group name"
  default     = "aze-rg-shd-prod"
}

variable "rg_location" {
  description = "Resource group location"
  default     = "East US"
}

variable "vnet_name" {
  description = "Virtual network name"
  default     = "AZE-Prod-Vnet"
}

variable "vnet_address_space" {
  description = "VNet address space"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnet1_name" {
  description = "Subnet1 network name"
  default     = "AZE-PROD-SQL-SNET"
}

variable "subnet1_address_space" {
  description = "Subnet1 address space"
  type        = list(string)
  default     = ["10.0.1.0/24"]
}

variable "subnet2_name" {
  description = "Subnet2 network name"
  default     = "AZE-PROD-APP-SNET"
}

variable "subnet2_address_space" {
  description = "Subnet2 address space"
  type        = list(string)
  default     = ["10.0.2.0/24"]
}
