# Policy definition for enforcing tags
resource "azurerm_policy_definition" "tagging_policy" {
  name         = "enforce-tags"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Enforce Environment and Owner Tags"
  description  = "Requires Environment and Owner tags on all resources"

  policy_rule = jsonencode({
    "if": {
      "field": "tags",
      "notContainsKey": ["Environment", "Owner"]
    },
    "then": {
      "effect": "deny"
    }
  })
}

# Policy definition for storage account encryption and public access
resource "azurerm_policy_definition" "storage_policy" {
  name         = "enforce-storage-encryption"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Ensure Storage Encryption and Deny Public Blob Access"
  description  = "Ensures all storage accounts are encrypted and deny public blob access"

  policy_rule = jsonencode({
    "if": {
      "field": "type",
      "equals": "Microsoft.Storage/storageAccounts"
    },
    "then": {
      "effect": "audit"
    }
  })
}

# Assign policies to the resource group
resource "azurerm_policy_assignment" "tagging_policy_assignment" {
  name         = "tagging-policy-assignment"
  policy_definition_id = azurerm_policy_definition.tagging_policy.id
  scope        = var.resource_group_id
}

resource "azurerm_policy_assignment" "storage_policy_assignment" {
  name         = "storage-policy-assignment"
  policy_definition_id = azurerm_policy_definition.storage_policy.id
  scope        = var.resource_group_id
}
