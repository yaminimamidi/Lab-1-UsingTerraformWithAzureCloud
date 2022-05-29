variable "sa1_name" {
  default = "acstorage111"
  type    = string
  description = "The name of Storage Account 1"
}

variable "location" {
  description = "Location of Azure Resources"

  validation {
    condition = (
      var.location == "eastus2"
    )
    error_message = "Supported value is eastus2"
  }
}

variable "secret" {
  description = "Secret for App"
  sensitive = true
}