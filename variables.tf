variable "name" {
  description = "Namespace name"
}

variable "base_path" {
  description = "gitlab base path for vault integration"
}

variable "vault_additional_policies" {
  default = []
  description = "Additional policies assigned to apps in this namespace"
}

variable "okta_maintainer_groups" {
  default = []
  description = "Maintainer groups"
}
