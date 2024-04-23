resource "azurerm_policy_assignment" "inheritSubscriptionTag" {
  name                 = var.name
  subscription_id      = var.subscription_id
  policy_definition_id = var.policy_definition_id
  location             = var.location

  identity {
    type = var.identity_type
  }

  parameters = var.parameters
}