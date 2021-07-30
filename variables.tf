variable "company-prefix" {
  type        = string
  default     = "cts"
  description = "Short company prefix to be used in the names. eg: Contoso - cts"
}

variable "region-prefix" {
  type        = string
  default     = "use1"
  description = "Short region prefix to be used in the Resource names. Eg: East US- use1, West US2 - usw2"
}

variable "environment-prefix" {
  type        = string
  default     = "prd"
  description = "Short environment prefix to be used in the Resource names. Eg: Production - prd, User Acceptance Testing - uat"
}

variable "unique-length" {
  description = "Max length of the uniqueness suffix to be added"
  type        = number
  default     = 4
}

variable "unique-include-numbers" {
  description = "If you want to include numbers in the unique generation"
  type        = bool
  default     = true
}

variable "suffix" {
  type        = list(string)
  default     = []
  description = "It is recommended that you specify a suffix for consistency. please use only lowercase characters when possible"
}