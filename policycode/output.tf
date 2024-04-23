output "policy_definition_id" {
  description = "The ID of the policy definition"
  value       = azurerm_policy_definition.inheritSubscriptionTag.id
}