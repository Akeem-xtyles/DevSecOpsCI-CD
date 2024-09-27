variable "group_name" {
    type = string
    default = null
}

variable "policy_name" {
    type = string
    default = null
}

variable "policy_description" {
    type = string
    default = null
}

variable "managed_policies_to_attach" {
    type = list(any)
    default = []
}

variable "inline_policy_to_attach" {
    type = string
    default = null
}
