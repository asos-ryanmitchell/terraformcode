resource "azurerm_policy_definition" "inheritSubscriptionTag" {
  name                  = var.name
  policy_type           = var.policy_type
  mode                  = var.mode
  display_name          = var.display_name
  description           = var.description
 
  metadata = <<METADATA
{
    "asosVersion": "1.0.0",
    "asosScope": "subscription",
    "asosScopeValue": "AsosCloudTraining",
    "category": "Tags"
}
METADATA

policy_rule = <<POLICY_RULE
{
    "if": {
        "allOf": [
          {
            "field": "[concat('tags[', parameters('tagName'), ']')]",
            "notEquals": "[subscription().tags[parameters('tagName')]]"
          },
          {
            "value": "[subscription().tags[parameters('tagName')]]",
            "notEquals": ""
          }
        ]
      },
      "then": {
        "effect": "modify",
        "details": {
          "roleDefinitionIds": [
            "/providers/Microsoft.Authorization/roleDefinitions/4a9ae827-6dc8-4573-8ac7-8239d42aa03f"
          ],
          "operations": [
            {
              "operation": "addOrReplace",
              "field": "[concat('tags[', parameters('tagName'), ']')]",
              "value": "[subscription().tags[parameters('tagName')]]"
            }
          ]
        }
      }
}
      POLICY_RULE
      
parameters = <<PARAMETERS
{
  "tagName": {
    "type": "String",
    "metadata": {
      "description": "Name of the tag to inherit from the subscription",
      "displayName": "Tag Name"
    }
  }
}
PARAMETERS
}
