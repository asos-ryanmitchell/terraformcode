variable "name" {
  description = "The name of the Policy Definition."
  default = "inheritSubscriptionTag"
}

variable "policy_type" {
    description = "The type of the Policy Definition." 
    default = "Custom"
}

variable "mode" {
    description = "The mode of the Policy Definition."
    default = "All"
}

variable "display_name" {
    description = "The display name of the Policy Definition."
    default = "inheritSubscriptionTag"
}

variable "description" {
    description = "The description of the Policy Definition." 
    default = "This policy ensures that all resources have a value for the Platform Tag and that it aligns to the tag assigned at the subscription level"
}