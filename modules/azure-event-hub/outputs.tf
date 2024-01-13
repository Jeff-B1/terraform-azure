output "consumer_connection_strings" {
  value = {
    for cg in var.consumer_groups : cg.name => azurerm_eventhub_authorization_rule.consumers[cg.name].primary_connection_string
  }
  sensitive = true
}