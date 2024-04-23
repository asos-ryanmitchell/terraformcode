variable "name" {
    description = "The name of the Policy Definition."
    default = "inheritSubscriptionTag"
    
}

variable "subscription_id" {
        description = "The subscription ID of the Policy Assignment."
        type = string
        
  
}

variable "policy_definition_id" {
    description = "The ID of the Policy Definition."
    type = string
    
  
}

variable "location" {
    description = "The location of the Policy Assignment."
    default = "northeurope"
  
}
variable "identity_type" {
    description = "The type of identity used for the Policy Assignment."
    default = "SystemAssigned"
}

variable "parameters" {
  description = "The parameters for the Policy Assignment."
    default = {
        tagName = "Platform"
    }
}